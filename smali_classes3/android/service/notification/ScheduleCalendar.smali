.class public Landroid/service/notification/ScheduleCalendar;
.super Ljava/lang/Object;
.source "ScheduleCalendar.java"


# static fields
.field public static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o TAG:Ljava/lang/String; = "ScheduleCalendar"


# instance fields
.field private final greylist-max-o mCalendar:Ljava/util/Calendar;

.field private final greylist-max-o mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 34
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/service/notification/ScheduleCalendar;->DEBUG:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private greylist-max-o addDays(JI)J
    .locals 2
    .param p1, "time"    # J
    .param p3, "days"    # I

    .line 193
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 195
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getDayOfWeek(J)I
    .locals 2
    .param p1, "time"    # J

    .line 179
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private blacklist getNextTime(JIIZ)J
    .locals 6
    .param p1, "now"    # J
    .param p3, "hr"    # I
    .param p4, "min"    # I
    .param p5, "adjust"    # Z

    .line 107
    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getClosestActualTime(JII)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 108
    .local v0, "time":J
    :goto_0
    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    .line 109
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v2

    .line 110
    .local v2, "tomorrow":J
    if-eqz p5, :cond_1

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getClosestActualTime(JII)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2, v3, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v4

    :goto_1
    return-wide v4

    .line 112
    .end local v2    # "tomorrow":J
    :cond_2
    return-wide v0
.end method

.method private greylist-max-o getTime(JII)J
    .locals 3
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .line 116
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 118
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 119
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 120
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 121
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o isInSchedule(IJJJ)Z
    .locals 5
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 171
    const/4 v0, 0x7

    .line 172
    .local v0, "n":I
    invoke-direct {p0, p2, p3}, Landroid/service/notification/ScheduleCalendar;->getDayOfWeek(J)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    .line 173
    .local v1, "day":I
    invoke-direct {p0, p4, p5, p1}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p4

    .line 174
    invoke-direct {p0, p6, p7, p1}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p6

    .line 175
    iget-object v3, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, p2, p4

    if-ltz v3, :cond_0

    cmp-long v3, p2, p6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private greylist-max-o updateDays()V
    .locals 3

    .line 184
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 185
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o exitAtAlarm()Z
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    return v0
.end method

.method public blacklist getClosestActualTime(JII)J
    .locals 6
    .param p1, "refTime"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .line 215
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 216
    .local v0, "resTime":J
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->observesDaylightTime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    return-wide v0

    .line 226
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 227
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 228
    .local v2, "resHr":I
    iget-object v3, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 229
    .local v3, "resMin":I
    add-int/lit8 v4, p3, 0x1

    if-ne v2, v4, :cond_1

    if-ne v3, p4, :cond_1

    .line 230
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v2, v4}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v4

    return-wide v4

    .line 232
    :cond_1
    return-wide v0
.end method

.method public greylist-max-o getNextChangeTime(J)J
    .locals 9
    .param p1, "now"    # J

    .line 96
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 97
    :cond_0
    iget v5, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v6, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/service/notification/ScheduleCalendar;->getNextTime(JIIZ)J

    move-result-wide v0

    .line 98
    .local v0, "nextStart":J
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v6, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v7, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/service/notification/ScheduleCalendar;->getNextTime(JIIZ)J

    move-result-wide v2

    .line 99
    .local v2, "nextEnd":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 101
    .local v4, "nextScheduleTime":J
    return-wide v4
.end method

.method public greylist-max-o isAlarmInSchedule(JJ)Z
    .locals 17
    .param p1, "alarm"    # J
    .param p3, "now"    # J

    .line 144
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getClosestActualTime(JII)J

    move-result-wide v12

    .line 146
    .local v12, "start":J
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 147
    .local v0, "end":J
    cmp-long v2, v0, v12

    const/4 v14, 0x1

    if-gtz v2, :cond_1

    .line 148
    invoke-direct {v8, v0, v1, v14}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v0

    move-wide v15, v0

    goto :goto_0

    .line 147
    :cond_1
    move-wide v15, v0

    .line 150
    .end local v0    # "end":J
    .local v15, "end":J
    :goto_0
    const/4 v1, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 151
    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 152
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 153
    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v11, v14

    goto :goto_1

    :cond_4
    nop

    .line 150
    :goto_1
    return v11

    .line 144
    .end local v12    # "start":J
    .end local v15    # "end":J
    :cond_5
    :goto_2
    return v11
.end method

.method public greylist-max-o isInSchedule(J)Z
    .locals 17
    .param p1, "time"    # J

    .line 129
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getClosestActualTime(JII)J

    move-result-wide v12

    .line 131
    .local v12, "start":J
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 132
    .local v0, "end":J
    cmp-long v2, v0, v12

    const/4 v14, 0x1

    if-gtz v2, :cond_1

    .line 133
    invoke-direct {v8, v0, v1, v14}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v0

    move-wide v15, v0

    goto :goto_0

    .line 132
    :cond_1
    move-wide v15, v0

    .line 135
    .end local v0    # "end":J
    .local v15, "end":J
    :goto_0
    const/4 v1, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v11, v14

    :cond_3
    return v11

    .line 129
    .end local v12    # "start":J
    .end local v15    # "end":J
    :cond_4
    :goto_1
    return v11
.end method

.method public greylist-max-o maybeSetNextAlarm(JJ)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "nextAlarm"    # J

    .line 67
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eqz v0, :cond_3

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide v0, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    goto :goto_0

    .line 71
    :cond_0
    cmp-long v2, p3, p1

    if-lez v2, :cond_1

    .line 73
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide p3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_3

    .line 75
    sget-boolean v2, Landroid/service/notification/ScheduleCalendar;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All alarms are in the past "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScheduleCalendar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide v0, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 81
    :cond_3
    :goto_0
    return-void
.end method

.method public greylist-max-o setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 1
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 56
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 58
    invoke-direct {p0}, Landroid/service/notification/ScheduleCalendar;->updateDays()V

    .line 59
    return-void
.end method

.method public greylist-max-o setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 88
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    return-void
.end method

.method public greylist-max-o shouldExitForAlarm(J)Z
    .locals 6
    .param p1, "time"    # J

    .line 161
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    return v1

    .line 164
    :cond_0
    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 167
    invoke-virtual {p0, v2, v3, p1, p2}, Landroid/service/notification/ScheduleCalendar;->isAlarmInSchedule(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 164
    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleCalendar[mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
