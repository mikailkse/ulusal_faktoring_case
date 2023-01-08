part of '../../view/profile_view.dart';

class _CustomTextFormField extends TextFormField {
  _CustomTextFormField({
    void Function(String)? onChanged,
    TextEditingController? controller,
  }) : super(
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.softGrey,
          ),
          textCapitalization: TextCapitalization.characters,
          autofocus: true,
          onChanged: onChanged,
          controller: controller,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: 'Search in settings..',
            fillColor: AppColors.athensGray,
            filled: true,
            hintStyle: TextStyle(
              color: AppColors.darkGrey,
              fontFamily: 'regular',
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.haiti,
            ),
            errorStyle: TextStyle(
              color: AppColors.orange,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.orange,
                width: 1.0,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.geyser,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.geyser,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.geyser,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.geyser,
                width: 1.0,
              ),
            ),
          ),
        );
}
