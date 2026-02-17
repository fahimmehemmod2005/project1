import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/shop/widgets/store_status_bar.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDeshboard extends StatefulWidget {
  const ProfileDeshboard({super.key});

  @override
  State<ProfileDeshboard> createState() => _ProfileDeshboardState();
}

class _ProfileDeshboardState extends State<ProfileDeshboard> {
  final int dmLimit = 50;
  final int dmUsed = 38;

  @override
  Widget build(BuildContext context) {
    double dmProgress = dmUsed / dmLimit;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text('Analytics', style: AppStyles.size14w600()),
      ),
      body: HelperWidget(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your activity overview', style: AppStyles.size14w600()),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('125', style: AppStyles.size16w700()),
                        Text('Messages', style: AppStyles.size14w400()),
                        Text('Sent', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5', style: AppStyles.size16w700()),
                        Text('Channels', style: AppStyles.size14w400()),
                        Text('Joined', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('12', style: AppStyles.size16w700()),
                        Text('Groups', style: AppStyles.size14w400()),
                        Text('Active', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2', style: AppStyles.size16w700()),
                        Text('Shop', style: AppStyles.size14w400()),
                        Text('Purchases', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$2400', style: AppStyles.size16w700()),
                        Text('Total', style: AppStyles.size14w400()),
                        Text('Spent', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('156', style: AppStyles.size16w700()),
                        Text('Likes', style: AppStyles.size14w400()),
                        Text('Given', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              Text('DM Usage Tracker', style: AppStyles.size14w600()),
              10.verticalSpace,
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(30),
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0.r),
                            child: LinearProgressIndicator(
                              value: dmProgress,
                              minHeight: 20,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        Text('$dmUsed/$dmLimit', style: AppStyles.size14w400()),
                      ],
                    ),
                    10.verticalSpace,
                    Text(
                      'You have ${dmLimit - dmUsed} DMs remaining',
                      style: AppStyles.size14w400(),
                    ),
                    10.verticalSpace,
                    Text(
                      'Resets on: March 1, 2026',
                      style: AppStyles.size14w400(),
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
              Text('Weekly Activity', style: AppStyles.size14w400()),
              10.verticalSpace,
              SizedBox(
                height: 150.h,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      horizontalInterval: 10,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: Colors.grey.withOpacity(0.1),
                          strokeWidth: 1,
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            const days = [
                              'Mon',
                              'Tue',
                              'Wed',
                              'Thu',
                              'Fri',
                              'Sat',
                              'Sun',
                            ];
                            if (value.toInt() >= 0 &&
                                value.toInt() < days.length) {
                              return Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Text(
                                  days[value.toInt()],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              );
                            }
                            return const SizedBox();
                          },
                          reservedSize: 30.h,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 10,
                          getTitlesWidget: (value, meta) {
                            if (value == 0 ||
                                value == 10 ||
                                value == 20 ||
                                value == 30) {
                              return Text(
                                '${value.toInt()}',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10.sp,
                                ),
                              );
                            }
                            return const SizedBox();
                          },
                          reservedSize: 30.w,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                    ),
                    minX: 0,
                    maxX: 6,
                    minY: 0,
                    maxY: 30,
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 8), // Mon
                          FlSpot(1, 12), // Tue
                          FlSpot(2, 23), // Wed (highest)
                          FlSpot(3, 16), // Thu
                          FlSpot(4, 20), // Fri
                          FlSpot(5, 14), // Sat
                          FlSpot(6, 18), // Sun
                        ],
                        isCurved: true,
                        gradient: const LinearGradient(
                          colors: [Color(0xFF7c3aed), Color(0xFFa855f7)],
                        ),
                        barWidth: 3,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) {
                            if (index == 2) {
                              return FlDotCirclePainter(
                                radius: 6,
                                color: Colors.green,
                                strokeWidth: 2,
                                strokeColor: Colors.white,
                              );
                            }
                            return FlDotCirclePainter(
                              radius: 4,
                              color: Colors.white,
                              strokeWidth: 2,
                              strokeColor: const Color(0xFF7c3aed),
                            );
                          },
                        ),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFF7c3aed).withOpacity(0.3),
                              const Color(0xFF7c3aed).withOpacity(0.0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ],
                    lineTouchData: LineTouchData(
                      touchTooltipData: LineTouchTooltipData(
                        getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                          return touchedBarSpots.map((barSpot) {
                            final days = [
                              'Mon',
                              'Tue',
                              'Wed',
                              'Thu',
                              'Fri',
                              'Sat',
                              'Sun',
                            ];
                            return LineTooltipItem(
                              '${days[barSpot.x.toInt()]}\n${barSpot.y.toInt()} activities',
                              const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),

              // Stats
              Center(
                child: Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFF7c3aed).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Most active: Wednesday',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '23 messages • 15 likes',
                        style: TextStyle(color: Colors.grey, fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
              ),
              10.verticalSpace,
              Text('Engagement Stats', style: AppStyles.size14w600()),
              10.verticalSpace,
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(30),
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: Column(
                  children: [
                    engagementStatus(title: 'Posts Liked:', subtitle: '156'),
                    10.verticalSpace,
                    engagementStatus(title: 'Comments Posted:', subtitle: '89'),
                    10.verticalSpace,
                    engagementStatus(title: 'Content Shared:', subtitle: '34'),
                    10.verticalSpace,
                    engagementStatus(title: 'Profile Views:', subtitle: '1.3k'),
                    10.verticalSpace,
                    Text(
                      "You're in the top 15% of fans!  🎉",
                      style: AppStyles.size16w600(),
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Row engagementStatus({String? title, String? subtitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '', style: AppStyles.size14w600()),
        Text(subtitle ?? '', style: AppStyles.size16w400()),
      ],
    );
  }
}
