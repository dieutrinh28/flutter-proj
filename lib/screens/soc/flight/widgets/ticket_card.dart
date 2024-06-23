import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/screens/soc/flight/widgets/ticket_stop.dart';
import 'package:flutter_proj/screens/soc/flight/widgets/ticket_painter.dart';

class TicketCard extends StatelessWidget {
  TicketCard({super.key});

  final _cityNameStyle =
      AppTextStyles.base.w400.size12.withColor(AppColors.gray500);
  final _airportCodeStyle =
      AppTextStyles.base.w600.size16.withColor(AppColors.gray900);
  final _timeStyle =
      AppTextStyles.base.w500.size12.withColor(AppColors.gray700);
  final _operatingNameStyle =
      AppTextStyles.base.w500.size14.withColor(AppColors.gray500);
  final _originPriceStyle =
      AppTextStyles.base.w400.size14.withColor(AppColors.gray400);
  final _netPriceStyle =
      AppTextStyles.base.w600.size18.withColor(AppColors.orangeDark);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimens.appPaddingNormal,
        vertical: AppDimens.appPaddingSmall,
      ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: CustomPaint(
        painter: TicketPainter(),
        child: Container(
          padding: const EdgeInsets.all(
            AppDimens.appPaddingNormal,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Thành phố Hồ Chí Minh",
                        style: _cityNameStyle,
                      ),
                      Text(
                        "Quốc tế Hong Kong",
                        style: _cityNameStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SGN",
                        style: _airportCodeStyle,
                      ),
                      const TicketStop(),
                      Text(
                        "HKG",
                        style: _airportCodeStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10:30",
                        style: _timeStyle,
                      ),
                      Text(
                        "12:00",
                        style: _timeStyle,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.network(
                          "https://travelnext.works/api/airlines/CI.gif",
                        ),
                      ),
                      Text(
                        "Cathay Pacific Airways",
                        style: _operatingNameStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ].separated(
                      const SizedBox(
                        width: 4,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "56 USD",
                          style: _originPriceStyle,
                        ),
                        Flexible(
                          child: Text(
                            "49.99 USD",
                            style: _netPriceStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ].separated(
              const SizedBox(
                height: AppDimens.separatedLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
