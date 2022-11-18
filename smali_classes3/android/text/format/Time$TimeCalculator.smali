.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field private blacklist mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

.field public greylist-max-o timezone:Ljava/lang/String;

.field public final blacklist wallTime:Lcom/android/i18n/timezone/WallTime;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 1082
    new-instance v0, Lcom/android/i18n/timezone/WallTime;

    invoke-direct {v0}, Lcom/android/i18n/timezone/WallTime;-><init>()V

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1083
    return-void
.end method

.method public static greylist-max-o compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .locals 10
    .param p0, "aObject"    # Landroid/text/format/Time$TimeCalculator;
    .param p1, "bObject"    # Landroid/text/format/Time$TimeCalculator;

    .line 1213
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v1, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1215
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1216
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 1217
    return v0

    .line 1220
    :cond_0
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1221
    .end local v0    # "diff":I
    .local v2, "diff":I
    if-eqz v2, :cond_1

    .line 1222
    return v2

    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v0

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1226
    .end local v2    # "diff":I
    .restart local v0    # "diff":I
    if-eqz v0, :cond_2

    .line 1227
    return v0

    .line 1230
    :cond_2
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1231
    .end local v0    # "diff":I
    .restart local v2    # "diff":I
    if-eqz v2, :cond_3

    .line 1232
    return v2

    .line 1235
    :cond_3
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v0

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1236
    .end local v2    # "diff":I
    .restart local v0    # "diff":I
    if-eqz v0, :cond_4

    .line 1237
    return v0

    .line 1240
    :cond_4
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1241
    .end local v0    # "diff":I
    .restart local v2    # "diff":I
    if-eqz v2, :cond_5

    .line 1242
    return v2

    .line 1245
    :cond_5
    return v1

    .line 1250
    .end local v2    # "diff":I
    :cond_6
    invoke-virtual {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    .line 1251
    .local v2, "am":J
    invoke-virtual {p1, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v4

    .line 1252
    .local v4, "bm":J
    sub-long v6, v2, v4

    .line 1253
    .local v6, "diff":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    const/4 v1, -0x1

    goto :goto_0

    :cond_7
    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    :goto_0
    return v1
.end method

.method private static blacklist lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;
    .locals 4
    .param p0, "timezoneId"    # Ljava/lang/String;

    .line 1120
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    .line 1121
    .local v0, "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    if-nez v0, :cond_0

    .line 1122
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v1

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    .line 1124
    :cond_0
    if-eqz v0, :cond_1

    .line 1127
    return-object v0

    .line 1125
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT not found: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private greylist-max-o toChar(I)C
    .locals 1
    .param p1, "n"    # I

    .line 1185
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    return v0
.end method

.method private greylist-max-o updateZoneInfoFromTimeZone()V
    .locals 2

    .line 1114
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 1117
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFieldsFromTime(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .line 1277
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setSecond(I)V

    .line 1278
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMinute(I)V

    .line 1279
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setHour(I)V

    .line 1280
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMonthDay(I)V

    .line 1281
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMonth(I)V

    .line 1282
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setYear(I)V

    .line 1283
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setWeekDay(I)V

    .line 1284
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setYearDay(I)V

    .line 1285
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->isDst:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setIsDst(I)V

    .line 1286
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-wide v1, p1, Landroid/text/format/Time;->gmtoff:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setGmtOffset(I)V

    .line 1288
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "allDay is true but sec, min, hour are not 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 1293
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1294
    return-void
.end method

.method public greylist-max-o copyFieldsToTime(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "time"    # Landroid/text/format/Time;

    .line 1259
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 1260
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 1261
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 1262
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    .line 1263
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->month:I

    .line 1264
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->year:I

    .line 1267
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1268
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    .line 1271
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->isDst:I

    .line 1273
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    .line 1274
    return-void
.end method

.method public greylist-max-o format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    const-string p1, "%c"

    .line 1109
    :cond_0
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    .line 1110
    .local v0, "formatter":Landroid/text/format/TimeFormatter;
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o format2445(Z)Ljava/lang/String;
    .locals 9
    .param p1, "hasTime"    # Z

    .line 1138
    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v2, v2, [C

    .line 1139
    .local v2, "buf":[C
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v3

    .line 1141
    .local v3, "n":I
    div-int/lit16 v4, v3, 0x3e8

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v2, v5

    .line 1142
    rem-int/lit16 v3, v3, 0x3e8

    .line 1143
    div-int/lit8 v4, v3, 0x64

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v6, 0x1

    aput-char v4, v2, v6

    .line 1144
    rem-int/lit8 v3, v3, 0x64

    .line 1145
    const/4 v4, 0x2

    div-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v7

    aput-char v7, v2, v4

    .line 1146
    const/16 v4, 0xa

    rem-int/2addr v3, v4

    .line 1147
    const/4 v7, 0x3

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v8

    aput-char v8, v2, v7

    .line 1149
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v7}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    add-int/2addr v7, v6

    .line 1150
    .end local v3    # "n":I
    .local v7, "n":I
    const/4 v3, 0x4

    div-int/lit8 v6, v7, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    aput-char v6, v2, v3

    .line 1151
    const/4 v3, 0x5

    rem-int/lit8 v6, v7, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    aput-char v6, v2, v3

    .line 1153
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v3

    .line 1154
    .end local v7    # "n":I
    .restart local v3    # "n":I
    const/4 v6, 0x6

    div-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v7

    aput-char v7, v2, v6

    .line 1155
    const/4 v6, 0x7

    rem-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v7

    aput-char v7, v2, v6

    .line 1157
    if-nez p1, :cond_1

    .line 1158
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1161
    :cond_1
    const/16 v6, 0x54

    aput-char v6, v2, v1

    .line 1163
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    .line 1164
    .end local v3    # "n":I
    .local v1, "n":I
    const/16 v3, 0x9

    div-int/lit8 v6, v1, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    aput-char v6, v2, v3

    .line 1165
    rem-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    aput-char v3, v2, v4

    .line 1167
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v1

    .line 1168
    const/16 v3, 0xb

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 1169
    const/16 v3, 0xc

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 1171
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v1

    .line 1172
    const/16 v3, 0xd

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 1173
    const/16 v3, 0xe

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 1175
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    const-string v4, "UTC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xf

    if-eqz v3, :cond_2

    .line 1177
    const/16 v3, 0x5a

    aput-char v3, v2, v4

    .line 1178
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 1180
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public greylist-max-o setTimeInMillis(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 1099
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 1101
    .local v0, "intSeconds":I
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1102
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/timezone/WallTime;->localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V

    .line 1103
    return-void
.end method

.method public greylist-max-o switchTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "timezone"    # Ljava/lang/String;

    .line 1131
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v0

    .line 1132
    .local v0, "seconds":I
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 1133
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1134
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/timezone/WallTime;->localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V

    .line 1135
    return-void
.end method

.method public greylist-max-o toMillis(Z)J
    .locals 6
    .param p1, "ignoreDst"    # Z

    .line 1086
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1087
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1, v0}, Lcom/android/i18n/timezone/WallTime;->setIsDst(I)V

    .line 1090
    :cond_0
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v1

    .line 1091
    .local v1, "r":I
    if-ne v1, v0, :cond_1

    .line 1092
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1094
    :cond_1
    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public greylist-max-o toStringInternal()Ljava/lang/String;
    .locals 5

    .line 1195
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1196
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1197
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1198
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1199
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1200
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1201
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1203
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1204
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1205
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1206
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 1207
    invoke-virtual {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1195
    const-string v1, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
