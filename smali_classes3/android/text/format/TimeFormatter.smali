.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final blacklist DAYSPERLYEAR:I = 0x16e

.field private static final blacklist DAYSPERNYEAR:I = 0x16d

.field private static final blacklist DAYSPERWEEK:I = 0x7

.field private static final blacklist FORCE_LOWER_CASE:I = -0x1

.field private static final blacklist HOURSPERDAY:I = 0x18

.field private static final blacklist MINSPERHOUR:I = 0x3c

.field private static final blacklist MONSPERYEAR:I = 0xc

.field private static final blacklist SECSPERMIN:I = 0x3c

.field private static blacklist sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private static blacklist sDateOnlyFormat:Ljava/lang/String;

.field private static blacklist sDateTimeFormat:Ljava/lang/String;

.field private static blacklist sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private static blacklist sLocale:Ljava/util/Locale;

.field private static blacklist sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final blacklist dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final blacklist dateOnlyFormat:Ljava/lang/String;

.field private final blacklist dateTimeFormat:Ljava/lang/String;

.field private final blacklist decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private blacklist numberFormatter:Ljava/util/Formatter;

.field private blacklist outputBuilder:Ljava/lang/StringBuilder;

.field private final blacklist timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 78
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 80
    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 81
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x104090b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 85
    const v3, 0x10405db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 86
    const v3, 0x1040301

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 89
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 90
    sget-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 91
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 92
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 93
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 94
    .end local v1    # "locale":Ljava/util/Locale;
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist append2DigitNumber(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I

    .line 144
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 145
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method

.method private static blacklist brokenIsLower(C)Z
    .locals 1
    .param p0, "toCheck"    # C

    .line 553
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist brokenIsUpper(C)Z
    .locals 1
    .param p0, "toCheck"    # C

    .line 545
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist brokenToLower(C)C
    .locals 1
    .param p0, "input"    # C

    .line 561
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 562
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    .line 564
    :cond_0
    return p0
.end method

.method private static blacklist brokenToUpper(C)C
    .locals 1
    .param p0, "input"    # C

    .line 572
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 573
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    .line 575
    :cond_0
    return p0
.end method

.method private blacklist formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 198
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 199
    .local v0, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 200
    const/4 v1, 0x1

    .line 201
    .local v1, "outputCurrentChar":Z
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    .line 202
    .local v2, "currentChar":C
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 203
    invoke-direct {p0, v0, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v1

    .line 205
    :cond_0
    if-eqz v1, :cond_1

    .line 206
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    .end local v1    # "outputCurrentChar":Z
    .end local v2    # "currentChar":C
    goto :goto_0

    .line 210
    :cond_2
    return-void
.end method

.method private static blacklist getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    .line 525
    sparse-switch p0, :sswitch_data_0

    .line 533
    return-object p1

    .line 527
    :sswitch_0
    return-object p2

    .line 531
    :sswitch_1
    return-object p4

    .line 529
    :sswitch_2
    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x30 -> :sswitch_1
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .locals 19
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 217
    .local v4, "modifier":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1c

    .line 219
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    .line 221
    .local v5, "currentChar":C
    const-string v7, "?"

    const/4 v8, 0x7

    const/16 v9, 0xc

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    const/4 v13, 0x0

    packed-switch v5, :pswitch_data_0

    .line 461
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 437
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-gez v7, :cond_0

    .line 438
    return v13

    .line 440
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v7

    .line 442
    .local v7, "diff":I
    if-gez v7, :cond_1

    .line 443
    const/16 v8, 0x2d

    .line 444
    .local v8, "sign":C
    neg-int v7, v7

    goto :goto_1

    .line 446
    .end local v8    # "sign":C
    :cond_1
    const/16 v8, 0x2b

    .line 448
    .restart local v8    # "sign":C
    :goto_1
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    div-int/lit8 v7, v7, 0x3c

    .line 450
    div-int/lit8 v9, v7, 0x3c

    mul-int/lit8 v9, v9, 0x64

    rem-int/lit8 v10, v7, 0x3c

    add-int/2addr v9, v10

    .line 451
    .end local v7    # "diff":I
    .local v9, "diff":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%04d"

    const-string v12, "%4d"

    invoke-static {v4, v10, v12, v11, v10}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v13

    invoke-virtual {v7, v10, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 452
    return v13

    .line 423
    .end local v8    # "sign":C
    .end local v9    # "diff":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v13, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 424
    return v13

    .line 420
    :pswitch_3
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 421
    return v13

    .line 414
    :pswitch_4
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-virtual {v7, v11, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 415
    return v13

    .line 405
    :pswitch_5
    const-string v6, "%e-%b-%Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 406
    return v13

    .line 362
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    :goto_2
    move v7, v8

    .line 363
    .local v7, "day":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v8, v11, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 364
    return v13

    .line 354
    .end local v7    # "day":I
    :pswitch_7
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    return v13

    .line 347
    :pswitch_8
    invoke-virtual/range {p2 .. p3}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v6

    .line 348
    .local v6, "timeInSeconds":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    return v13

    .line 340
    .end local v6    # "timeInSeconds":I
    :pswitch_9
    const-string v6, "%I:%M:%S %p"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 341
    return v13

    .line 327
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_3

    .line 328
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_3

    .line 329
    :cond_3
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    .line 327
    :goto_3
    invoke-direct {v0, v6, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 330
    return v13

    .line 324
    :pswitch_b
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    return v13

    .line 320
    :pswitch_c
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    .line 321
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v13

    .line 320
    invoke-virtual {v7, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 322
    return v13

    .line 312
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/2addr v7, v9

    if-eqz v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/lit8 v9, v7, 0xc

    :cond_4
    move v7, v9

    .line 313
    .local v7, "n2":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 314
    return v13

    .line 308
    .end local v7    # "n2":I
    :pswitch_e
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    .line 308
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 310
    return v13

    .line 303
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v6

    .line 304
    .local v7, "yearDay":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%03d"

    const-string v10, "%3d"

    invoke-static {v4, v9, v10, v11, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    .line 305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    .line 304
    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 306
    return v13

    .line 288
    .end local v7    # "yearDay":I
    :pswitch_10
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    .line 288
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 290
    return v13

    .line 273
    :pswitch_11
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    .line 273
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 275
    return v13

    .line 267
    :pswitch_12
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 268
    return v13

    .line 257
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_5

    goto :goto_4

    .line 260
    :cond_5
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 259
    invoke-virtual {v6, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_5

    .line 258
    :cond_6
    :goto_4
    nop

    .line 257
    :goto_5
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 262
    return v13

    .line 231
    :pswitch_14
    nop

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-ltz v9, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-lt v9, v8, :cond_7

    goto :goto_6

    .line 235
    :cond_7
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 234
    invoke-virtual {v7, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    goto :goto_7

    .line 233
    :cond_8
    :goto_6
    nop

    .line 231
    :goto_7
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 237
    return v13

    .line 429
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-gez v7, :cond_9

    .line 430
    return v13

    .line 432
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_8

    :cond_a
    move v6, v13

    .line 433
    .local v6, "isDst":Z
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 434
    invoke-virtual {v7, v6, v13}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 435
    return v13

    .line 426
    .end local v6    # "isDst":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v6, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 427
    return v13

    .line 417
    :pswitch_17
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 418
    return v13

    .line 408
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v8

    .line 409
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_9

    .line 410
    :cond_b
    const/4 v9, 0x6

    :goto_9
    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    .line 411
    .local v7, "n":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 412
    return v13

    .line 357
    .end local v7    # "n":I
    :pswitch_19
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v13

    .line 357
    invoke-virtual {v7, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 360
    return v13

    .line 351
    :pswitch_1a
    const-string v6, "%H:%M:%S"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 352
    return v13

    .line 343
    :pswitch_1b
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    .line 343
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 345
    return v13

    .line 337
    :pswitch_1c
    const-string v6, "%H:%M"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 338
    return v13

    .line 332
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_c

    .line 333
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_a

    .line 334
    :cond_c
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    :goto_a
    nop

    .line 332
    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 335
    return v13

    .line 316
    :pswitch_1e
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    .line 316
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 318
    return v13

    .line 299
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/2addr v7, v9

    if-eqz v7, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/lit8 v9, v7, 0xc

    :cond_d
    move v7, v9

    .line 300
    .local v7, "hour":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 301
    return v13

    .line 295
    .end local v7    # "hour":I
    :pswitch_20
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 296
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    .line 295
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 297
    return v13

    .line 369
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    .line 370
    .local v7, "year":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v9

    .line 371
    .local v9, "yday":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v14

    .line 374
    .local v14, "wday":I
    :goto_b
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v15

    const/16 v16, 0x16e

    const/16 v17, 0x16d

    if-eqz v15, :cond_e

    move/from16 v15, v16

    goto :goto_c

    :cond_e
    move/from16 v15, v17

    .line 376
    .local v15, "len":I
    :goto_c
    add-int/lit8 v18, v9, 0xb

    sub-int v18, v18, v14

    rem-int/lit8 v18, v18, 0x7

    add-int/lit8 v13, v18, -0x3

    .line 378
    .local v13, "bot":I
    rem-int/lit8 v18, v15, 0x7

    sub-int v6, v13, v18

    .line 379
    .local v6, "top":I
    const/4 v8, -0x3

    if-ge v6, v8, :cond_f

    .line 380
    add-int/lit8 v6, v6, 0x7

    .line 382
    :cond_f
    add-int/2addr v6, v15

    .line 383
    if-lt v9, v6, :cond_10

    .line 384
    add-int/lit8 v7, v7, 0x1

    .line 385
    const/4 v8, 0x1

    .line 386
    .local v8, "w":I
    const/4 v1, 0x1

    goto :goto_d

    .line 388
    .end local v8    # "w":I
    :cond_10
    if-lt v9, v13, :cond_13

    .line 389
    sub-int v8, v9, v13

    const/16 v16, 0x7

    div-int/lit8 v8, v8, 0x7

    const/4 v1, 0x1

    add-int/2addr v8, v1

    .line 390
    .restart local v8    # "w":I
    nop

    .line 395
    .end local v6    # "top":I
    .end local v13    # "bot":I
    .end local v15    # "len":I
    :goto_d
    const/16 v6, 0x56

    if-ne v5, v6, :cond_11

    .line 396
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v1, v12

    invoke-virtual {v6, v10, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_e

    .line 397
    :cond_11
    const/4 v12, 0x0

    const/16 v6, 0x67

    if-ne v5, v6, :cond_12

    .line 398
    invoke-direct {v0, v7, v12, v1, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_e

    .line 400
    :cond_12
    invoke-direct {v0, v7, v1, v1, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 402
    :goto_e
    return v12

    .line 392
    .end local v8    # "w":I
    .restart local v6    # "top":I
    .restart local v13    # "bot":I
    .restart local v15    # "len":I
    :cond_13
    add-int/lit8 v7, v7, -0x1

    .line 393
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_f

    :cond_14
    move/from16 v16, v17

    :goto_f
    add-int v9, v9, v16

    .line 394
    .end local v6    # "top":I
    .end local v13    # "bot":I
    .end local v15    # "len":I
    move-object/from16 v1, p1

    const/4 v6, 0x1

    const/4 v8, 0x7

    const/4 v13, 0x0

    goto :goto_b

    .line 292
    .end local v7    # "year":I
    .end local v9    # "yday":I
    .end local v14    # "wday":I
    :pswitch_22
    const-string v1, "%Y-%m-%d"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 293
    const/4 v1, 0x0

    return v1

    .line 279
    :pswitch_23
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 270
    :pswitch_24
    move v1, v13

    const-string v6, "%m/%d/%y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 271
    return v1

    .line 264
    :pswitch_25
    move v1, v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7, v1, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 265
    return v1

    .line 239
    :pswitch_26
    const/16 v1, 0x2d

    if-ne v4, v1, :cond_17

    .line 240
    nop

    .line 241
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v9, :cond_15

    goto :goto_10

    .line 244
    :cond_15
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 243
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v6}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    aget-object v7, v1, v6

    goto :goto_11

    .line 242
    :cond_16
    :goto_10
    nop

    .line 240
    :goto_11
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_14

    .line 247
    :cond_17
    nop

    .line 248
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v9, :cond_18

    goto :goto_12

    .line 251
    :cond_18
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 250
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    aget-object v7, v1, v6

    goto :goto_13

    .line 249
    :cond_19
    :goto_12
    nop

    .line 247
    :goto_13
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 254
    :goto_14
    const/4 v1, 0x0

    return v1

    .line 223
    :pswitch_27
    nop

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-ltz v1, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    const/4 v6, 0x7

    if-lt v1, v6, :cond_1a

    goto :goto_15

    .line 227
    :cond_1a
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 226
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v7

    add-int/2addr v7, v6

    aget-object v7, v1, v7

    goto :goto_16

    .line 225
    :cond_1b
    :goto_15
    nop

    .line 223
    :goto_16
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 229
    const/4 v1, 0x0

    return v1

    .line 455
    :pswitch_28
    move v1, v13

    const-string v6, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 456
    return v1

    .line 285
    :pswitch_29
    move v4, v5

    .line 286
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 464
    .end local v5    # "currentChar":C
    :cond_1c
    move v1, v6

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_23
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_21
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_29
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_21
        :pswitch_13
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist isLeap(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 537
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 176
    return-object p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "length":I
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    sub-int/2addr v2, v1

    .line 181
    .local v2, "offsetToLocalizedDigits":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 183
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 184
    .local v5, "ch":C
    if-lt v5, v1, :cond_1

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    .line 185
    add-int v6, v5, v2

    int-to-char v5, v6

    .line 187
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    .line 468
    sparse-switch p2, :sswitch_data_0

    .line 491
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 475
    :sswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 476
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    :cond_0
    goto :goto_4

    .line 480
    :sswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 481
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 482
    .local v1, "c":C
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v1

    goto :goto_2

    .line 484
    :cond_1
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v1

    .line 487
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    .end local v0    # "i":I
    :cond_3
    goto :goto_4

    .line 470
    :sswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 471
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 473
    .end local v0    # "i":I
    :cond_4
    nop

    .line 493
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x23 -> :sswitch_1
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist outputYear(IZZI)V
    .locals 14
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    .line 499
    move-object v0, p0

    move/from16 v1, p4

    const/16 v2, 0x64

    .line 500
    .local v2, "DIVISOR":I
    rem-int/lit8 v3, p1, 0x64

    .line 501
    .local v3, "trail":I
    div-int/lit8 v4, p1, 0x64

    div-int/lit8 v5, v3, 0x64

    add-int/2addr v4, v5

    .line 502
    .local v4, "lead":I
    rem-int/lit8 v3, v3, 0x64

    .line 503
    if-gez v3, :cond_0

    if-lez v4, :cond_0

    .line 504
    add-int/lit8 v3, v3, 0x64

    .line 505
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 506
    :cond_0
    if-gez v4, :cond_1

    if-lez v3, :cond_1

    .line 507
    add-int/lit8 v3, v3, -0x64

    .line 508
    add-int/lit8 v4, v4, 0x1

    .line 510
    :cond_1
    :goto_0
    const/4 v5, 0x0

    const-string v6, "%d"

    const-string v7, "%2d"

    const/4 v8, 0x1

    const-string v9, "%02d"

    if-eqz p2, :cond_3

    .line 511
    if-nez v4, :cond_2

    if-gez v3, :cond_2

    .line 512
    iget-object v10, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string v11, "-0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 514
    :cond_2
    iget-object v10, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v9, v7, v6, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 517
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 518
    if-gez v3, :cond_4

    neg-int v10, v3

    goto :goto_2

    :cond_4
    move v10, v3

    .line 519
    .local v10, "n":I
    :goto_2
    iget-object v11, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v9, v7, v6, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v11, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 521
    .end local v10    # "n":I
    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 156
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 161
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "result":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 170
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 167
    return-object v3

    .line 169
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 170
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 171
    throw v1
.end method

.method blacklist formatMillisWithFixedFormat(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeMillis"    # J

    .line 112
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 115
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 122
    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 131
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 133
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "result":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
