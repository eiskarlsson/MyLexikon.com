class MbtiController < ApplicationController
  before_filter :authenticate_user!
  @mbti_type

  # GET /mbti_tests
  # GET /mbti_tests.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbti_tests }
    end
  end

  def create
    @mbti_tests.each do|mbti_test|
      #mbti_test.answer = Answer.find_or_create_by_question_number_and_user_id_and_language(   mbti_test.question_number ,    current_user.id, mbti_test.language)
      mbti_test.answer = Answer.where(:question_number => mbti_test.question_number).first_or_create!()
      mbti_test.answer.user_id = current_user.id
      mbti_test.answer.is_answer_a = params[("radiobuttontag1"+mbti_test.question_number.to_s).to_sym].to_i
      mbti_test.save
    end

    redirect_to results_path

    #if @mbti_tests.save
    #  redirect_to '/titles'
    #else
    #  render 'new'
    #  flash[:notice] = "Didn't work"
    #end
  end

  def calculate
    answer_1 = Answer.find_by_question_number_and_user_id(1, current_user.id)
    answer_8 = Answer.find_by_question_number_and_user_id(   8 ,    current_user.id)
    answer_15 = Answer.find_by_question_number_and_user_id(  15 ,    current_user.id)
    answer_22 = Answer.find_by_question_number_and_user_id(  22 ,    current_user.id)
    answer_29 = Answer.find_by_question_number_and_user_id(  29 ,    current_user.id)
    answer_36 = Answer.find_by_question_number_and_user_id(  36 ,    current_user.id)
    answer_43 = Answer.find_by_question_number_and_user_id(  43 ,    current_user.id)
    answer_50 = Answer.find_by_question_number_and_user_id(  50 ,    current_user.id)
    answer_57 = Answer.find_by_question_number_and_user_id(  57 ,    current_user.id)
    answer_64 = Answer.find_by_question_number_and_user_id(  64 ,    current_user.id)

    if answer_1 != nil && answer_8 != nil && answer_15 != nil && answer_22 != nil && answer_29 != nil && answer_36 != nil && answer_43 != nil && answer_50 != nil && answer_57 != nil && answer_64 != nil
      col_1_A = answer_1.is_answer_a + answer_8.is_answer_a + answer_15.is_answer_a + answer_22.is_answer_a + answer_29.is_answer_a + answer_36.is_answer_a + answer_43.is_answer_a + answer_50.is_answer_a + answer_57.is_answer_a + answer_64.is_answer_a
      col_1_B = 10 - col_1_A
    end

    answer_2 = Answer.find_by_question_number_and_user_id(   2 ,    current_user.id)
    answer_9 = Answer.find_by_question_number_and_user_id(   9 ,    current_user.id)
    answer_16 = Answer.find_by_question_number_and_user_id(  16 ,    current_user.id)
    answer_23 = Answer.find_by_question_number_and_user_id(  23 ,    current_user.id)
    answer_30 = Answer.find_by_question_number_and_user_id(  30 ,    current_user.id)
    answer_37 = Answer.find_by_question_number_and_user_id(  37 ,    current_user.id)
    answer_44 = Answer.find_by_question_number_and_user_id(  44 ,    current_user.id)
    answer_51 = Answer.find_by_question_number_and_user_id(  51 ,    current_user.id)
    answer_58 = Answer.find_by_question_number_and_user_id(  58 ,    current_user.id)
    answer_65 = Answer.find_by_question_number_and_user_id(  65 ,    current_user.id)

    if answer_2 != nil && answer_9 != nil && answer_16 != nil && answer_23 != nil && answer_30 != nil && answer_37 != nil && answer_44 != nil && answer_51 != nil && answer_58 != nil && answer_65 != nil
      col_2_A = answer_2.is_answer_a + answer_9.is_answer_a + answer_16.is_answer_a + answer_23.is_answer_a + answer_30.is_answer_a + answer_37.is_answer_a + answer_44.is_answer_a + answer_51.is_answer_a + answer_58.is_answer_a + answer_65.is_answer_a
      col_2_B = 10 - col_2_A
    end

    answer_3 = Answer.find_by_question_number_and_user_id(   3 ,    current_user.id)
    answer_10 = Answer.find_by_question_number_and_user_id(   10 ,    current_user.id)
    answer_17 = Answer.find_by_question_number_and_user_id(  17 ,    current_user.id)
    answer_24 = Answer.find_by_question_number_and_user_id(  24 ,    current_user.id)
    answer_31 = Answer.find_by_question_number_and_user_id(  31 ,    current_user.id)
    answer_38 = Answer.find_by_question_number_and_user_id(  38 ,    current_user.id)
    answer_45 = Answer.find_by_question_number_and_user_id(  45 ,    current_user.id)
    answer_52 = Answer.find_by_question_number_and_user_id(  52 ,    current_user.id)
    answer_59 = Answer.find_by_question_number_and_user_id(  59 ,    current_user.id)
    answer_66 = Answer.find_by_question_number_and_user_id(  66 ,    current_user.id)

    if answer_3 != nil && answer_10 != nil && answer_17 != nil && answer_24 != nil && answer_31 != nil && answer_38 != nil && answer_45 != nil && answer_52 != nil && answer_59 != nil && answer_66 != nil
      col_3_A = answer_3.is_answer_a + answer_10.is_answer_a + answer_17.is_answer_a + answer_24.is_answer_a + answer_31.is_answer_a + answer_38.is_answer_a + answer_45.is_answer_a + answer_52.is_answer_a + answer_59.is_answer_a + answer_66.is_answer_a
      col_3_B = 10 - col_3_A
    end

    answer_4 = Answer.find_by_question_number_and_user_id(   4 ,    current_user.id)
    answer_11 = Answer.find_by_question_number_and_user_id(   11 ,    current_user.id)
    answer_18 = Answer.find_by_question_number_and_user_id(  18 ,    current_user.id)
    answer_25 = Answer.find_by_question_number_and_user_id(  25 ,    current_user.id)
    answer_32 = Answer.find_by_question_number_and_user_id(  32 ,    current_user.id)
    answer_39 = Answer.find_by_question_number_and_user_id(  39 ,    current_user.id)
    answer_46 = Answer.find_by_question_number_and_user_id(  46 ,    current_user.id)
    answer_53 = Answer.find_by_question_number_and_user_id(  53 ,    current_user.id)
    answer_60 = Answer.find_by_question_number_and_user_id(  60 ,    current_user.id)
    answer_67 = Answer.find_by_question_number_and_user_id(  67 ,    current_user.id)

    if answer_4 != nil && answer_11 != nil && answer_18 != nil && answer_25 != nil && answer_32 != nil && answer_39 != nil && answer_46 != nil && answer_53 != nil && answer_60 != nil && answer_67 != nil
      col_4_A = answer_4.is_answer_a + answer_11.is_answer_a + answer_18.is_answer_a + answer_25.is_answer_a + answer_32.is_answer_a + answer_39.is_answer_a + answer_46.is_answer_a + answer_53.is_answer_a + answer_60.is_answer_a + answer_67.is_answer_a
      col_4_B = 10 - col_4_A
    end

    answer_5 = Answer.find_by_question_number_and_user_id(   5 ,    current_user.id)
    answer_12 = Answer.find_by_question_number_and_user_id(  12 ,    current_user.id)
    answer_19 = Answer.find_by_question_number_and_user_id(  19 ,    current_user.id)
    answer_26 = Answer.find_by_question_number_and_user_id(  26 ,    current_user.id)
    answer_33 = Answer.find_by_question_number_and_user_id(  33 ,    current_user.id)
    answer_40 = Answer.find_by_question_number_and_user_id(  40 ,    current_user.id)
    answer_47 = Answer.find_by_question_number_and_user_id(  47 ,    current_user.id)
    answer_54 = Answer.find_by_question_number_and_user_id(  54 ,    current_user.id)
    answer_61 = Answer.find_by_question_number_and_user_id(  61 ,    current_user.id)
    answer_68 = Answer.find_by_question_number_and_user_id(  68 ,    current_user.id)

    if answer_5 != nil && answer_12 != nil && answer_19 != nil && answer_26 != nil && answer_33 != nil && answer_40 != nil && answer_47 != nil && answer_54 != nil && answer_61 != nil && answer_68 != nil
      col_5_A = answer_5.is_answer_a + answer_12.is_answer_a + answer_19.is_answer_a + answer_26.is_answer_a + answer_33.is_answer_a + answer_40.is_answer_a + answer_47.is_answer_a + answer_54.is_answer_a + answer_61.is_answer_a + answer_68.is_answer_a
      col_5_B = 10 - col_5_A
    end

    answer_6 = Answer.find_by_question_number_and_user_id(   6 ,    current_user.id)
    answer_13 = Answer.find_by_question_number_and_user_id(  13 ,    current_user.id)
    answer_20 = Answer.find_by_question_number_and_user_id(  20 ,    current_user.id)
    answer_27 = Answer.find_by_question_number_and_user_id(  27 ,    current_user.id)
    answer_34 = Answer.find_by_question_number_and_user_id(  34 ,    current_user.id)
    answer_41 = Answer.find_by_question_number_and_user_id(  41 ,    current_user.id)
    answer_48 = Answer.find_by_question_number_and_user_id(  48 ,    current_user.id)
    answer_55 = Answer.find_by_question_number_and_user_id(  55 ,    current_user.id)
    answer_62 = Answer.find_by_question_number_and_user_id(  62 ,    current_user.id)
    answer_69 = Answer.find_by_question_number_and_user_id(  69 ,    current_user.id)

    if answer_6 != nil && answer_13 != nil && answer_20 != nil && answer_27 != nil && answer_34 != nil && answer_41 != nil && answer_48 != nil && answer_55 != nil && answer_62 != nil && answer_69 != nil
      col_6_A = answer_6.is_answer_a + answer_13.is_answer_a + answer_20.is_answer_a + answer_27.is_answer_a + answer_34.is_answer_a + answer_41.is_answer_a + answer_48.is_answer_a + answer_55.is_answer_a + answer_62.is_answer_a + answer_69.is_answer_a
      col_6_B = 10 - col_6_A
    end

    answer_7 = Answer.find_by_question_number_and_user_id(   7 ,    current_user.id)
    answer_14 = Answer.find_by_question_number_and_user_id(  14 ,    current_user.id)
    answer_21 = Answer.find_by_question_number_and_user_id(  21 ,    current_user.id)
    answer_28 = Answer.find_by_question_number_and_user_id(  28 ,    current_user.id)
    answer_35 = Answer.find_by_question_number_and_user_id(  35 ,    current_user.id)
    answer_42 = Answer.find_by_question_number_and_user_id(  42 ,    current_user.id)
    answer_49 = Answer.find_by_question_number_and_user_id(  49 ,    current_user.id)
    answer_56 = Answer.find_by_question_number_and_user_id(  56 ,    current_user.id)
    answer_63 = Answer.find_by_question_number_and_user_id(  63 ,    current_user.id)
    answer_70 = Answer.find_by_question_number_and_user_id(  70 ,    current_user.id)

    if answer_7 != nil && answer_14 != nil && answer_21 != nil && answer_28 != nil && answer_35 != nil && answer_42 != nil && answer_49 != nil && answer_56 != nil && answer_63 != nil && answer_70 != nil
      col_7_A = answer_7.is_answer_a + answer_14.is_answer_a + answer_21.is_answer_a + answer_28.is_answer_a + answer_35.is_answer_a + answer_42.is_answer_a + answer_49.is_answer_a + answer_56.is_answer_a + answer_63.is_answer_a + answer_70.is_answer_a
      col_7_B = 10 - col_7_A
    end


    if col_1_A >= col_1_B
      @mbti_type = "E"
    else
      @mbti_type = "I"
    end

    if col_2_A + col_3_A >= col_2_B + col_3_B
      @mbti_type += "S"
    else
      @mbti_type += "N"
    end

    if col_4_A + col_5_A >= col_4_B + col_5_B
      @mbti_type += "T"
    else
      @mbti_type += "F"
    end

    if col_6_A + col_7_A >= col_6_B + col_7_B
      @mbti_type += "J"
    else
      @mbti_type += "P"
    end

    respond_to do |format|
      format.html # calculate.html.erb
      format.xml { render xml: @mbti_type }
    end

    @profile = current_user.profile
    current_user.profile.mbti_test = @mbti_type
    current_user.profile.save
  end




end

