use Covid_Appointment;

select * from dbo.attendances;

select * from waiting_times;

select * from reattendances;

-- % of attendances admitted by month
SELECT 
  reporting_period,
  CAST(REPLACE(attendances, ',', '') AS BIGINT) AS total_attendances,
  of_attendances_admitted
FROM attendances
WHERE reporting_period NOT LIKE '%/%'  -- filters out 2023/24 etc.
ORDER BY reporting_period;

-- Reattendance rate by month or year
SELECT 
  reporting_period,
  reattendance_rate
FROM reattendances
ORDER BY reporting_period;

--A&E service demand and short-term patient returns interact 
select a.reporting_period, a.attendances, a.of_attendances_admitted,
	b.reporting_period, b.unplanned_reattendances_within_7_days,b.total_unplanned_attendances,b.reattendance_rate
	from attendances a
	join reattendances b
	on a.reporting_period=b.reporting_period;

-- Top 5 Months with Highest Reattendance Rate
SELECT Top 5
reporting_period, reattendance_rate
FROM reattendances
WHERE reporting_period NOT LIKE '%/%'
ORDER BY reattendance_rate DESC;

--Reattendances as % of Total Attendances
SELECT 
  r.reporting_period,
  r.Unplanned_reattendances_within_7_days,
  a.attendances,
  ROUND(100.0 * r.Unplanned_reattendances_within_7_days / a.attendances, 2) AS reattendance_rate_percent
FROM reattendances r
JOIN attendances a ON r.reporting_period = a.reporting_period
WHERE r.reporting_period NOT LIKE '%/%';

-- waiting categort distribution per year
SELECT reporting_period, waiting_times, percentage
FROM waiting_times
ORDER BY reporting_period, waiting_times;

-- High Wait, Low Attendance (Year-Only)
SELECT 
  a.reporting_period,
  a.attendances,
  wt.percentage AS pct_waiting_4hr_plus
FROM attendances a
JOIN waiting_times wt 
  ON a.reporting_period = wt.reporting_period
WHERE wt.waiting_times = '>=4'
  AND a.reporting_period LIKE '%/%' 
  AND wt.percentage > 30;        

















