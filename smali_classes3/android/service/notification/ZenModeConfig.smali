.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final greylist-max-o ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final greylist-max-o ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final blacklist ALLOW_ATT_CONV:Ljava/lang/String; = "convos"

.field private static final blacklist ALLOW_ATT_CONV_FROM:Ljava/lang/String; = "convosFrom"

.field private static final greylist-max-o ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final greylist-max-o ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final greylist-max-o ALLOW_ATT_MEDIA:Ljava/lang/String; = "media"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final greylist-max-o ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final greylist-max-o ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final greylist-max-o ALLOW_ATT_SYSTEM:Ljava/lang/String; = "system"

.field private static final greylist-max-o ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final greylist-max-o ALL_DAYS:[I

.field private static final greylist-max-o AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final greylist-max-o CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final greylist-max-o CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final greylist-max-o CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final greylist-max-o CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final greylist-max-o CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final greylist-max-o COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DAY_MINUTES:I = 0x5a0

.field private static final greylist-max-o DEFAULT_ALLOW_ALARMS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_CALLS:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV_FROM:I = 0x2

.field private static final greylist-max-o DEFAULT_ALLOW_EVENTS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_MEDIA:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_MESSAGES:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_REPEAT_CALLERS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_SYSTEM:Z = false

.field private static final greylist-max-o DEFAULT_CALLS_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_CHANNELS_BYPASSING_DND:Z = false

.field public static final greylist-max-o DEFAULT_RULE_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_SUPPRESSED_VISUAL_EFFECTS:I = 0x9d

.field private static final greylist-max-o DISALLOW_ATT_VISUAL_EFFECTS:Ljava/lang/String; = "visualEffects"

.field private static final greylist-max-o DISALLOW_TAG:Ljava/lang/String; = "disallow"

.field public static final greylist-max-o EVENTS_DEFAULT_RULE_ID:Ljava/lang/String; = "EVENTS_DEFAULT_RULE"

.field public static final greylist-max-o EVENT_PATH:Ljava/lang/String; = "event"

.field public static final greylist-max-o EVERY_NIGHT_DEFAULT_RULE_ID:Ljava/lang/String; = "EVERY_NIGHT_DEFAULT_RULE"

.field public static final greylist-max-o IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field public static final blacklist MANUAL_RULE_ID:Ljava/lang/String; = "MANUAL_RULE"

.field private static final greylist-max-o MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final greylist-max-o MAX_SOURCE:I = 0x2

.field private static final greylist-max-o MINUTES_MS:I = 0xea60

.field public static final greylist-max-o MINUTE_BUCKETS:[I

.field private static final greylist-max-o RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final blacklist RULE_ATT_CONFIG_ACTIVITY:Ljava/lang/String; = "configActivity"

.field private static final greylist-max-o RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final greylist-max-o RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final greylist-max-o RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final greylist-max-o RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final blacklist RULE_ATT_MODIFIED:Ljava/lang/String; = "modified"

.field private static final greylist-max-o RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist RULE_ATT_PKG:Ljava/lang/String; = "pkg"

.field private static final greylist-max-o RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final greylist-max-o RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final greylist-max-o SECONDS_MS:I = 0x3e8

.field private static final blacklist SHOW_ATT_AMBIENT:Ljava/lang/String; = "showAmbient"

.field private static final blacklist SHOW_ATT_BADGES:Ljava/lang/String; = "showBadges"

.field private static final blacklist SHOW_ATT_FULL_SCREEN_INTENT:Ljava/lang/String; = "showFullScreenIntent"

.field private static final blacklist SHOW_ATT_LIGHTS:Ljava/lang/String; = "showLights"

.field private static final blacklist SHOW_ATT_NOTIFICATION_LIST:Ljava/lang/String; = "showNotificationList"

.field private static final blacklist SHOW_ATT_PEEK:Ljava/lang/String; = "shoePeek"

.field private static final blacklist SHOW_ATT_STATUS_BAR_ICONS:Ljava/lang/String; = "showStatusBarIcons"

.field public static final greylist-max-o SOURCE_ANYONE:I = 0x0

.field public static final greylist-max-o SOURCE_CONTACT:I = 0x1

.field public static final greylist-max-o SOURCE_STAR:I = 0x2

.field private static final greylist-max-o STATE_ATT_CHANNELS_BYPASSING_DND:Ljava/lang/String; = "areChannelsBypassingDnd"

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "state"

.field public static final greylist-max-o SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final greylist-max-o XML_VERSION:I = 0x8

.field private static final greylist-max-o ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final greylist-max-o ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist ZEN_POLICY_TAG:Ljava/lang/String; = "zen_policy"

.field public static final greylist-max-o ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final greylist-max-o ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public greylist allowAlarms:Z

.field public greylist-max-o allowCalls:Z

.field public greylist-max-o allowCallsFrom:I

.field public blacklist allowConversations:Z

.field public blacklist allowConversationsFrom:I

.field public greylist-max-o allowEvents:Z

.field public greylist-max-o allowMedia:Z

.field public greylist-max-o allowMessages:Z

.field public greylist-max-o allowMessagesFrom:I

.field public greylist-max-o allowReminders:Z

.field public greylist-max-o allowRepeatCallers:Z

.field public greylist-max-o allowSystem:Z

.field public greylist-max-o areChannelsBypassingDnd:Z

.field public greylist automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public greylist-max-o suppressedVisualEffects:I

.field public greylist-max-o user:I

.field public greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoDayList([I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 81
    const-string v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    .line 93
    const-string v0, "EVERY_NIGHT_DEFAULT_RULE"

    const-string v1, "EVENTS_DEFAULT_RULE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    .line 96
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 99
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 981
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor greylist <init>()V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 185
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 187
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 188
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 189
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 190
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 191
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 192
    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 193
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 194
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 195
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 196
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 197
    const/16 v0, 0x9d

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 198
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 202
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 206
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 185
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 187
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 188
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 189
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 190
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 191
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 192
    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 193
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 194
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 195
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 196
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 197
    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 198
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 202
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 217
    const/4 v2, 0x0

    const-class v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "len":I
    if-lez v2, :cond_5

    .line 220
    new-array v3, v2, [Ljava/lang/String;

    .line 221
    .local v3, "ids":[Ljava/lang/String;
    new-array v4, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 222
    .local v4, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 223
    sget-object v5, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 224
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v2, :cond_5

    .line 225
    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    aget-object v7, v3, v5

    aget-object v8, v4, v5

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 228
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v4    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    move v3, v1

    :goto_8
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 235
    return-void
.end method

.method private static greylist-max-o addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "TT;*>;)V"
        }
    .end annotation

    .line 386
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_0

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 388
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 10
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 2084
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2086
    .local v0, "allowReminders":Z
    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2088
    .local v3, "allowCalls":Z
    :goto_1
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 2090
    .local v4, "allowMessages":Z
    :goto_2
    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 2092
    .local v5, "allowEvents":Z
    :goto_3
    iget v6, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    .line 2094
    .local v6, "allowRepeatCallers":Z
    :goto_4
    iget v7, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v2

    .line 2096
    .local v7, "allowConversations":Z
    :goto_5
    iget v8, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v8, v1

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_6

    :cond_6
    move v8, v2

    .line 2097
    .local v8, "areChannelsBypassingDnd":Z
    :goto_6
    iget v9, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_7

    move v9, v1

    goto :goto_7

    :cond_7
    move v9, v2

    .line 2098
    .local v9, "allowSystem":Z
    :goto_7
    if-nez v0, :cond_8

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-nez v7, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    return v1
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 2128
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 5
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 2108
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2109
    .local v0, "allowAlarms":Z
    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2110
    .local v3, "allowMedia":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static greylist-max-o areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 2137
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-nez v0, :cond_0

    .line 2138
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2137
    :goto_0
    return v0
.end method

.method public static greylist-max-o diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p0, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .line 375
    if-nez p0, :cond_1

    .line 376
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 377
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-eqz p1, :cond_0

    .line 378
    const-string v1, "config"

    const-string/jumbo v2, "insert"

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->-$$Nest$maddLine(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 380
    :cond_0
    return-object v0

    .line 382
    .end local v0    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o generateMinuteBuckets()[I
    .locals 5

    .line 421
    const/16 v0, 0xc

    .line 422
    .local v0, "maxHrs":I
    const/16 v1, 0xf

    new-array v2, v1, [I

    .line 423
    .local v2, "buckets":[I
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 424
    const/16 v1, 0x1e

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 425
    const/16 v1, 0x2d

    const/4 v3, 0x2

    aput v1, v2, v3

    .line 426
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 427
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v2, v3

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method private static greylist-max-o getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "useLine1"    # Z
    .param p4, "shortVersion"    # Z

    .line 1752
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v8, ""

    if-nez v7, :cond_0

    return-object v8

    .line 1753
    :cond_0
    const-string v9, ""

    .line 1754
    .local v9, "summary":Ljava/lang/String;
    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_7

    .line 1755
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1756
    .local v10, "id":Landroid/net/Uri;
    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1757
    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1759
    :cond_1
    if-nez v10, :cond_2

    .line 1760
    const v0, 0x10409ec

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1762
    :cond_2
    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 1763
    .local v11, "time":J
    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1764
    .local v13, "c":Landroid/service/notification/Condition;
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-lez v0, :cond_3

    .line 1765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1766
    .local v14, "now":J
    sub-long v4, v11, v14

    .line 1767
    .local v4, "span":J
    long-to-float v0, v4

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide/from16 v16, v4

    .end local v4    # "span":J
    .local v16, "span":J
    move/from16 v4, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v13

    .line 1770
    .end local v14    # "now":J
    .end local v16    # "span":J
    :cond_3
    if-nez v13, :cond_4

    move-object v0, v8

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    iget-object v0, v13, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, v13, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 1771
    .local v0, "rt":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v8, v0

    :goto_1
    move-object v9, v8

    .line 1775
    .end local v0    # "rt":Ljava/lang/String;
    .end local v10    # "id":Landroid/net/Uri;
    .end local v11    # "time":J
    .end local v13    # "c":Landroid/service/notification/Condition;
    :cond_7
    :goto_2
    iget-object v0, v7, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1776
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1777
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1778
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move-object v9, v2

    .end local v9    # "summary":Ljava/lang/String;
    .local v2, "summary":Ljava/lang/String;
    goto :goto_4

    .line 1780
    .end local v2    # "summary":Ljava/lang/String;
    .restart local v9    # "summary":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409ee

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v8, v4, v5

    .line 1781
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 1786
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    :goto_4
    goto :goto_3

    .line 1787
    :cond_a
    return-object v9
.end method

.method public static greylist-max-o getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .line 1747
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getConversationSendersWithDefault(II)I
    .locals 0
    .param p1, "senders"    # I
    .param p2, "defaultPolicySender"    # I

    .line 1184
    packed-switch p1, :pswitch_data_0

    .line 1190
    return p2

    .line 1188
    :pswitch_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zenOn"    # Z
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "describeForeverCondition"    # Z

    .line 2155
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2159
    :cond_0
    const-string v1, ""

    .line 2160
    .local v1, "secondaryText":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 2163
    .local v2, "latestEndTime":J
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_5

    .line 2164
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 2165
    .local v4, "id":Landroid/net/Uri;
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 2167
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2168
    .local v5, "appName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2169
    move-object v1, v5

    .line 2171
    .end local v5    # "appName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2172
    :cond_2
    if-nez v4, :cond_4

    .line 2174
    if-eqz p3, :cond_3

    .line 2175
    const v0, 0x10409ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2177
    :cond_3
    return-object v0

    .line 2180
    :cond_4
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2181
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 2182
    nop

    .line 2183
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v5

    .line 2184
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2182
    invoke-static {p0, v2, v3, v5, v6}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2185
    .local v5, "formattedTime":Ljava/lang/CharSequence;
    const v6, 0x10409ef

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2192
    .end local v4    # "id":Landroid/net/Uri;
    .end local v5    # "formattedTime":Ljava/lang/CharSequence;
    :cond_5
    :goto_0
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2193
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2194
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 2195
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 2204
    :cond_6
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    return-object v0

    .line 2197
    :cond_7
    :goto_2
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p0, v6}, Landroid/service/notification/ZenModeConfig;->parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 2198
    .local v6, "endTime":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_8

    .line 2199
    move-wide v2, v6

    .line 2200
    iget-object v1, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2207
    .end local v5    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "endTime":J
    :cond_8
    goto :goto_1

    .line 2209
    :cond_9
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v0, v1

    :cond_a
    return-object v0

    .line 2156
    .end local v1    # "secondaryText":Ljava/lang/String;
    .end local v2    # "latestEndTime":J
    :cond_b
    :goto_3
    return-object v0
.end method

.method public static greylist-max-o getEventConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .line 1661
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "isSameDay"    # Z
    .param p4, "userHandle"    # I

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_0

    const-string v1, "EEE "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1405
    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Hm"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "hma"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "skeleton":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1407
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getNextAlarm(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2238
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2239
    .local v0, "alarms":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    .line 2240
    .local v1, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method private blacklist getNotificationPolicySenders(II)I
    .locals 1
    .param p1, "senders"    # I
    .param p2, "defaultPolicySender"    # I

    .line 1170
    packed-switch p1, :pswitch_data_0

    .line 1178
    return p2

    .line 1176
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1174
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1172
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner"    # Ljava/lang/String;

    .line 1727
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1729
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1730
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 1731
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1732
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 1733
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1734
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_0

    .line 1735
    return-object v3

    .line 1741
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "seq":Ljava/lang/CharSequence;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1739
    :catchall_0
    move-exception v1

    .line 1740
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v3, "Error loading owner caption"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1742
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static greylist-max-o getScheduleConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .line 1555
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getZenPolicySenders(I)I
    .locals 1
    .param p0, "senders"    # I

    .line 1198
    packed-switch p0, :pswitch_data_0

    .line 1205
    const/4 v0, 0x3

    return v0

    .line 1202
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1200
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z
    .locals 1
    .param p1, "categoryType"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1161
    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isToday(J)Z
    .locals 5
    .param p0, "time"    # J

    .line 1414
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1415
    .local v0, "now":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1416
    .local v1, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1417
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1418
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 1419
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 1420
    return v2

    .line 1422
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static greylist-max-o isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 407
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1464
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .locals 5
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1471
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1472
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 1473
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1477
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing countdown alarm condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1480
    return v1

    .line 1474
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return v1

    .line 1483
    :cond_2
    return v1
.end method

.method public static greylist-max-o isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1639
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidHour(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 916
    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 403
    if-eqz p0, :cond_1

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o isValidMinute(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 920
    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1504
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    nop

    .line 1509
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1512
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1510
    :cond_1
    :goto_0
    return v0

    .line 1505
    .end local v1    # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :catch_0
    move-exception v1

    .line 1506
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method public static blacklist isValidScheduleConditionId(Landroid/net/Uri;Z)Z
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;
    .param p1, "allowNever"    # Z

    .line 1522
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    nop

    .line 1527
    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1530
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1528
    :cond_1
    :goto_0
    return v0

    .line 1523
    .end local v1    # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :catch_0
    move-exception v1

    .line 1524
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method private static greylist-max-o isValidSource(I)Z
    .locals 1
    .param p0, "source"    # I

    .line 924
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z
    .locals 1
    .param p1, "visualEffect"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1165
    iget v0, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z
    .locals 2
    .param p0, "zen"    # I
    .param p1, "consolidatedPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 2117
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    .line 2120
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 2117
    :goto_1
    return v0
.end method

.method public static greylist-max-o newRuleId()Ljava/lang/String;
    .locals 3

    .line 1720
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist normalizeConversationSenders(ZII)I
    .locals 2
    .param p0, "allowed"    # Z
    .param p1, "senders"    # I
    .param p2, "def"    # I

    .line 1294
    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 1295
    return v0

    .line 1297
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 1300
    return p2

    .line 1302
    :cond_1
    return p1
.end method

.method private static blacklist normalizePrioritySenders(II)I
    .locals 1
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .line 1285
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    .line 1288
    return p1

    .line 1290
    :cond_0
    return p0
.end method

.method private static greylist-max-o parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Landroid/net/Uri;

    .line 2213
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 2218
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2219
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    .line 2220
    .local v0, "schedule":Landroid/service/notification/ScheduleCalendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    .line 2223
    .local v1, "endTimeMs":J
    invoke-virtual {v0}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2224
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v3

    .line 2225
    .local v3, "nextAlarm":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 2226
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2227
    return-wide v3

    .line 2231
    .end local v3    # "nextAlarm":J
    :cond_1
    return-wide v1

    .line 2234
    .end local v0    # "schedule":Landroid/service/notification/ScheduleCalendar;
    .end local v1    # "endTimeMs":J
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static greylist-max-o prioritySendersToSource(II)I
    .locals 1
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .line 1276
    packed-switch p0, :pswitch_data_0

    .line 1280
    return p1

    .line 1278
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1277
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1279
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist readConditionXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/Condition;
    .locals 18
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 743
    move-object/from16 v1, p0

    const-string/jumbo v0, "id"

    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 744
    .local v10, "id":Landroid/net/Uri;
    const/4 v11, 0x0

    if-nez v10, :cond_0

    return-object v11

    .line 745
    :cond_0
    const-string/jumbo v0, "summary"

    invoke-interface {v1, v11, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 746
    .local v12, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    invoke-interface {v1, v11, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 747
    .local v13, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    invoke-interface {v1, v11, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 748
    .local v14, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 749
    .local v15, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 750
    .local v16, "state":I
    const-string v0, "flags"

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v17

    .line 752
    .local v17, "flags":I
    :try_start_0
    new-instance v0, Landroid/service/notification/Condition;

    move-object v2, v0

    move-object v3, v10

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read condition xml"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    return-object v11
.end method

.method public static blacklist readRuleXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 678
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 679
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 680
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 681
    const-string/jumbo v3, "zen"

    invoke-interface {p0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "zen":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 683
    iget v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v5, v4, :cond_0

    .line 684
    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad zen mode in rule xml:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-object v1

    .line 687
    :cond_0
    const-string v4, "conditionId"

    invoke-static {p0, v4}, Landroid/service/notification/ZenModeConfig;->safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 688
    const-string v4, "component"

    invoke-static {p0, v4}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 689
    const-string v4, "configActivity"

    invoke-static {p0, v4}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 690
    const-string/jumbo v4, "pkg"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 691
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 693
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 695
    :cond_2
    const-wide/16 v4, 0x0

    const-string v6, "creationTime"

    invoke-static {p0, v6, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 696
    const-string v4, "enabler"

    invoke-interface {p0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 697
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 700
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 701
    const-string v4, "android"

    invoke-static {v1, v4}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating zenMode of automatic rule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 705
    :cond_3
    const/4 v1, 0x0

    const-string/jumbo v2, "modified"

    invoke-static {p0, v2, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 706
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenPolicyXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 707
    return-object v0
.end method

.method public static blacklist readXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;
    .locals 15
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 532
    .local v0, "type":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    .line 533
    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v1

    .line 535
    :cond_1
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 536
    .local v5, "rt":Landroid/service/notification/ZenModeConfig;
    const/16 v6, 0x8

    const-string/jumbo v7, "version"

    invoke-static {p0, v7, v6}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/service/notification/ZenModeConfig;->version:I

    .line 537
    iget v6, v5, Landroid/service/notification/ZenModeConfig;->user:I

    const-string/jumbo v7, "user"

    invoke-static {p0, v7, v6}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/service/notification/ZenModeConfig;->user:I

    .line 538
    const/4 v6, 0x0

    .line 539
    .local v6, "readSuppressedEffects":Z
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    move v0, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_10

    .line 540
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 541
    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 542
    return-object v5

    .line 544
    :cond_3
    if-ne v0, v2, :cond_2

    .line 545
    const-string v7, "allow"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_b

    .line 546
    const-string v7, "calls"

    invoke-static {p0, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 548
    const-string/jumbo v7, "repeatCallers"

    invoke-static {p0, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 550
    const-string/jumbo v7, "messages"

    invoke-static {p0, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 552
    const-string/jumbo v7, "reminders"

    invoke-static {p0, v7, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 554
    const-string v7, "convos"

    invoke-static {p0, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 555
    const-string v7, "events"

    invoke-static {p0, v7, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 556
    const-string v7, "from"

    const/4 v10, -0x1

    invoke-static {p0, v7, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 557
    .local v7, "from":I
    const-string v11, "callsFrom"

    invoke-static {p0, v11, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 558
    .local v11, "callsFrom":I
    const-string/jumbo v12, "messagesFrom"

    invoke-static {p0, v12, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 559
    .local v10, "messagesFrom":I
    const-string v12, "convosFrom"

    invoke-static {p0, v12, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v5, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 561
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 562
    iput v11, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 563
    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 564
    :cond_4
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 565
    sget-object v12, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Migrating existing shared \'from\': "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput v7, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 567
    iput v7, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 569
    :cond_5
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 570
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 572
    :goto_1
    const-string v12, "alarms"

    invoke-static {p0, v12, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v5, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 573
    const-string/jumbo v12, "media"

    invoke-static {p0, v12, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 575
    const-string/jumbo v8, "system"

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 578
    const-string/jumbo v8, "visualScreenOff"

    invoke-static {p0, v8}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 579
    .local v8, "allowWhenScreenOff":Ljava/lang/Boolean;
    const-string/jumbo v12, "visualScreenOn"

    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    .line 580
    .local v12, "allowWhenScreenOn":Ljava/lang/Boolean;
    if-nez v8, :cond_6

    if-eqz v12, :cond_7

    .line 584
    :cond_6
    const/4 v6, 0x1

    .line 585
    iput v9, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 587
    :cond_7
    if-eqz v8, :cond_8

    .line 588
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_8

    .line 589
    iget v9, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit16 v9, v9, 0x8c

    iput v9, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 594
    :cond_8
    if-eqz v12, :cond_9

    .line 595
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    .line 596
    iget v9, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 599
    :cond_9
    if-eqz v6, :cond_a

    .line 600
    sget-object v9, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Migrated visual effects to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v7    # "from":I
    .end local v8    # "allowWhenScreenOff":Ljava/lang/Boolean;
    .end local v10    # "messagesFrom":I
    .end local v11    # "callsFrom":I
    .end local v12    # "allowWhenScreenOn":Ljava/lang/Boolean;
    :cond_a
    goto/16 :goto_0

    :cond_b
    const-string v7, "disallow"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-nez v6, :cond_c

    .line 605
    const/16 v7, 0x9d

    const-string/jumbo v8, "visualEffects"

    invoke-static {p0, v8, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    goto/16 :goto_0

    .line 607
    :cond_c
    const-string/jumbo v7, "manual"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 608
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v7

    iput-object v7, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto/16 :goto_0

    .line 609
    :cond_d
    const-string v7, "automatic"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 610
    const-string/jumbo v7, "ruleId"

    invoke-interface {p0, v1, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 611
    .local v7, "id":Ljava/lang/String;
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v8

    .line 612
    .local v8, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v7, :cond_f

    if-eqz v8, :cond_f

    .line 613
    iput-object v7, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 614
    iget-object v9, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 616
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_e
    const-string/jumbo v7, "state"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 617
    const-string v7, "areChannelsBypassingDnd"

    invoke-static {p0, v7, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    goto/16 :goto_0

    .line 616
    :cond_f
    :goto_2
    goto/16 :goto_0

    .line 622
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to reach END_DOCUMENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist readZenPolicyXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;
    .locals 20
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 774
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 776
    .local v1, "policySet":Z
    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 777
    .local v2, "builder":Landroid/service/notification/ZenPolicy$Builder;
    const-string v3, "callsFrom"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 778
    .local v3, "calls":I
    const-string/jumbo v5, "messagesFrom"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 779
    .local v5, "messages":I
    const-string/jumbo v6, "repeatCallers"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 780
    .local v6, "repeatCallers":I
    const-string v7, "convosFrom"

    invoke-static {v0, v7, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 782
    .local v7, "conversations":I
    const-string v8, "alarms"

    invoke-static {v0, v8, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 783
    .local v8, "alarms":I
    const-string/jumbo v9, "media"

    invoke-static {v0, v9, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 784
    .local v9, "media":I
    const-string/jumbo v10, "system"

    invoke-static {v0, v10, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 785
    .local v10, "system":I
    const-string v11, "events"

    invoke-static {v0, v11, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 786
    .local v11, "events":I
    const-string/jumbo v12, "reminders"

    invoke-static {v0, v12, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 788
    .local v12, "reminders":I
    if-eqz v3, :cond_0

    .line 789
    invoke-virtual {v2, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 790
    const/4 v1, 0x1

    .line 792
    :cond_0
    if-eqz v5, :cond_1

    .line 793
    invoke-virtual {v2, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 794
    const/4 v1, 0x1

    .line 796
    :cond_1
    const/4 v13, 0x1

    if-eqz v6, :cond_3

    .line 797
    if-ne v6, v13, :cond_2

    move v14, v13

    goto :goto_0

    :cond_2
    move v14, v4

    :goto_0
    invoke-virtual {v2, v14}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 798
    const/4 v1, 0x1

    .line 800
    :cond_3
    if-eqz v7, :cond_4

    .line 801
    invoke-virtual {v2, v7}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 802
    const/4 v1, 0x1

    .line 804
    :cond_4
    if-eqz v8, :cond_6

    .line 805
    if-ne v8, v13, :cond_5

    move v14, v13

    goto :goto_1

    :cond_5
    move v14, v4

    :goto_1
    invoke-virtual {v2, v14}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 806
    const/4 v1, 0x1

    .line 808
    :cond_6
    if-eqz v9, :cond_8

    .line 809
    if-ne v9, v13, :cond_7

    move v14, v13

    goto :goto_2

    :cond_7
    move v14, v4

    :goto_2
    invoke-virtual {v2, v14}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 810
    const/4 v1, 0x1

    .line 812
    :cond_8
    if-eqz v10, :cond_a

    .line 813
    if-ne v10, v13, :cond_9

    move v14, v13

    goto :goto_3

    :cond_9
    move v14, v4

    :goto_3
    invoke-virtual {v2, v14}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 814
    const/4 v1, 0x1

    .line 816
    :cond_a
    if-eqz v11, :cond_c

    .line 817
    if-ne v11, v13, :cond_b

    move v14, v13

    goto :goto_4

    :cond_b
    move v14, v4

    :goto_4
    invoke-virtual {v2, v14}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 818
    const/4 v1, 0x1

    .line 820
    :cond_c
    if-eqz v12, :cond_e

    .line 821
    if-ne v12, v13, :cond_d

    move v14, v13

    goto :goto_5

    :cond_d
    move v14, v4

    :goto_5
    invoke-virtual {v2, v14}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 822
    const/4 v1, 0x1

    .line 825
    :cond_e
    const-string/jumbo v14, "showFullScreenIntent"

    invoke-static {v0, v14, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 827
    .local v14, "fullScreenIntent":I
    const-string/jumbo v15, "showLights"

    invoke-static {v0, v15, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 828
    .local v15, "lights":I
    const-string/jumbo v13, "shoePeek"

    invoke-static {v0, v13, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 829
    .local v13, "peek":I
    move/from16 v16, v1

    .end local v1    # "policySet":Z
    .local v16, "policySet":Z
    const-string/jumbo v1, "showStatusBarIcons"

    invoke-static {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 830
    .local v1, "statusBar":I
    move/from16 v17, v3

    .end local v3    # "calls":I
    .local v17, "calls":I
    const-string/jumbo v3, "showBadges"

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 831
    .local v3, "badges":I
    move/from16 v18, v5

    .end local v5    # "messages":I
    .local v18, "messages":I
    const-string/jumbo v5, "showAmbient"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 832
    .local v5, "ambient":I
    move/from16 v19, v6

    .end local v6    # "repeatCallers":I
    .local v19, "repeatCallers":I
    const-string/jumbo v6, "showNotificationList"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 835
    .local v6, "notificationList":I
    if-eqz v14, :cond_10

    .line 836
    const/4 v4, 0x1

    if-ne v14, v4, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 837
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 839
    :cond_10
    if-eqz v15, :cond_12

    .line 840
    const/4 v4, 0x1

    if-ne v15, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 841
    const/16 v16, 0x1

    .line 843
    :cond_12
    if-eqz v13, :cond_14

    .line 844
    const/4 v4, 0x1

    if-ne v13, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 845
    const/16 v16, 0x1

    .line 847
    :cond_14
    if-eqz v1, :cond_16

    .line 848
    const/4 v4, 0x1

    if-ne v1, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 849
    const/16 v16, 0x1

    .line 851
    :cond_16
    if-eqz v3, :cond_18

    .line 852
    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 853
    const/16 v16, 0x1

    .line 855
    :cond_18
    if-eqz v5, :cond_1a

    .line 856
    const/4 v4, 0x1

    if-ne v5, v4, :cond_19

    const/4 v4, 0x1

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 857
    const/16 v16, 0x1

    .line 859
    :cond_1a
    if-eqz v6, :cond_1c

    .line 860
    const/4 v4, 0x1

    if-ne v6, v4, :cond_1b

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 861
    const/16 v16, 0x1

    .line 864
    :cond_1c
    if-eqz v16, :cond_1d

    .line 865
    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v4

    return-object v4

    .line 867
    :cond_1d
    const/4 v4, 0x0

    return-object v4
.end method

.method private blacklist rulesToString()Ljava/lang/String;
    .locals 3

    .line 296
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v0, "{}"

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 303
    if-lez v1, :cond_1

    .line 304
    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 307
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist safeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 936
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o safeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .line 940
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 941
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeComponentName(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 949
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 951
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 945
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLong(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 961
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 955
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 957
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 4
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 412
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 413
    :cond_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 414
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 416
    :cond_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0
.end method

.method private static greylist-max-o sourceToPrioritySenders(II)I
    .locals 1
    .param p0, "source"    # I
    .param p1, "def"    # I

    .line 1267
    packed-switch p0, :pswitch_data_0

    .line 1271
    return p1

    .line 1270
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1269
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1268
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .line 433
    packed-switch p0, :pswitch_data_0

    .line 441
    const-string v0, "UNKNOWN"

    return-object v0

    .line 439
    :pswitch_0
    const-string/jumbo v0, "stars"

    return-object v0

    .line 437
    :pswitch_1
    const-string v0, "contacts"

    return-object v0

    .line 435
    :pswitch_2
    const-string v0, "anyone"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o toCountdownConditionId(JZ)Landroid/net/Uri;
    .locals 2
    .param p0, "time"    # J
    .param p2, "alarm"    # Z

    .line 1439
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1440
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1441
    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1442
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1443
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1444
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1445
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1439
    return-object v0
.end method

.method private static greylist-max-o toDayList([I)Ljava/lang/String;
    .locals 3
    .param p0, "days"    # [I

    .line 480
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 483
    if-lez v1, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static greylist-max-o toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 1627
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1628
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1629
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v1, v1

    .line 1630
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1631
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "calendar"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1632
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1633
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    .line 1632
    :goto_1
    const-string v1, "calendarId"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 1634
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reply"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1635
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1627
    return-object v0
.end method

.method public static greylist-max-o toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # J
    .param p3, "userHandle"    # I

    .line 1390
    move-wide/from16 v0, p1

    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v2

    .line 1391
    .local v2, "isSameDay":Z
    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-static {v3, v0, v1, v2, v4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1392
    .local v5, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1393
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const v9, 0x10409ef

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1394
    .local v8, "line1":Ljava/lang/String;
    invoke-static {v0, v1, v7}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v7

    .line 1395
    .local v7, "id":Landroid/net/Uri;
    new-instance v9, Landroid/service/notification/Condition;

    const-string v12, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v9

    move-object v11, v7

    move-object v13, v8

    invoke-direct/range {v10 .. v17}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v9
.end method

.method public static greylist-max-o toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1258
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 1259
    .local v0, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    new-instance v1, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v1}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    .line 1261
    .local v1, "sc":Landroid/service/notification/ScheduleCalendar;
    invoke-virtual {v1, v0}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    .line 1262
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1263
    return-object v1

    .line 1259
    .end local v1    # "sc":Landroid/service/notification/ScheduleCalendar;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 1491
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1492
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1493
    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 1494
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1495
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1496
    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 1497
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exitAtAlarm"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1498
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1491
    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .line 1333
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .line 1338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1339
    .local v0, "now":J
    if-nez p1, :cond_0

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_0
    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    .line 1340
    .local v2, "millis":J
    :goto_0
    add-long v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v4

    return-object v4
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    .line 1347
    move-wide/from16 v0, p1

    move/from16 v2, p3

    .line 1348
    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v3

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-static {v4, v0, v1, v3, v5}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1349
    .local v3, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1350
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1351
    .local v7, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const v8, 0x10409ef

    const-string v9, "formattedTime"

    const-string v10, "count"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x3c

    if-ge v2, v13, :cond_2

    .line 1353
    move/from16 v13, p3

    .line 1354
    .local v13, "num":I
    if-eqz p5, :cond_0

    const v14, 0x10409ea

    goto :goto_0

    .line 1355
    :cond_0
    const v14, 0x10409e9

    :goto_0
    nop

    .line 1356
    .local v14, "summaryResId":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    invoke-interface {v7, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-static {v6, v7, v14}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v9

    .line 1359
    .local v9, "summary":Ljava/lang/String;
    if-eqz p5, :cond_1

    const v10, 0x10409e8

    goto :goto_1

    .line 1360
    :cond_1
    const v10, 0x10409e7

    :goto_1
    nop

    .line 1361
    .local v10, "line1ResId":I
    invoke-static {v6, v7, v10}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v15

    .line 1362
    .local v15, "line1":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v12

    invoke-virtual {v6, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1363
    .end local v10    # "line1ResId":I
    .end local v14    # "summaryResId":I
    .local v8, "line2":Ljava/lang/String;
    goto :goto_4

    .end local v8    # "line2":Ljava/lang/String;
    .end local v9    # "summary":Ljava/lang/String;
    .end local v13    # "num":I
    .end local v15    # "line1":Ljava/lang/String;
    :cond_2
    const/16 v13, 0x5a0

    if-ge v2, v13, :cond_5

    .line 1365
    int-to-float v13, v2

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1366
    .restart local v13    # "num":I
    if-eqz p5, :cond_3

    const v14, 0x10409e6

    goto :goto_2

    .line 1367
    :cond_3
    const v14, 0x10409e5

    :goto_2
    nop

    .line 1368
    .restart local v14    # "summaryResId":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    invoke-interface {v7, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    invoke-static {v6, v7, v14}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v9

    .line 1371
    .restart local v9    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_4

    const v10, 0x10409e4

    goto :goto_3

    .line 1372
    :cond_4
    const v10, 0x10409e3

    :goto_3
    nop

    .line 1373
    .restart local v10    # "line1ResId":I
    invoke-static {v6, v7, v10}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v15

    .line 1374
    .restart local v15    # "line1":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v12

    invoke-virtual {v6, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1375
    .end local v10    # "line1ResId":I
    .end local v14    # "summaryResId":I
    .restart local v8    # "line2":Ljava/lang/String;
    goto :goto_4

    .line 1377
    .end local v8    # "line2":Ljava/lang/String;
    .end local v9    # "summary":Ljava/lang/String;
    .end local v13    # "num":I
    .end local v15    # "line1":Ljava/lang/String;
    :cond_5
    const v8, 0x10409f0

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v12

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line2":Ljava/lang/String;
    move-object v15, v8

    .restart local v15    # "line1":Ljava/lang/String;
    move-object/from16 v24, v9

    move-object/from16 v8, v24

    .line 1380
    .restart local v8    # "line2":Ljava/lang/String;
    .local v9, "summary":Ljava/lang/String;
    :goto_4
    invoke-static {v0, v1, v12}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v10

    .line 1381
    .local v10, "id":Landroid/net/Uri;
    new-instance v11, Landroid/service/notification/Condition;

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move-object/from16 v19, v15

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v23}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v11
.end method

.method public static greylist-max-o tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1449
    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1450
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 1451
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "countdown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1453
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing countdown condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    return-wide v1

    .line 1451
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-wide v1
.end method

.method private static greylist-max-o tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 490
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 491
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_1

    return-object v0

    .line 493
    :cond_1
    array-length v2, v1

    new-array v2, v2, [I

    .line 494
    .local v2, "rt":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 495
    aget-object v4, v1, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 496
    .local v4, "day":I
    if-ne v4, v5, :cond_2

    return-object v0

    .line 497
    :cond_2
    aput v4, v2, v3

    .line 494
    .end local v4    # "day":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public static greylist-max-o tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1643
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1644
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1646
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1647
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "event"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1648
    .local v0, "isEvent":Z
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    .line 1649
    :cond_1
    new-instance v3, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 1650
    .local v3, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v4, "userId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2710

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 1651
    const-string v4, "calendar"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 1652
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1653
    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 1655
    :cond_2
    const-string v4, "calendarId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 1656
    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 1657
    return-object v3
.end method

.method private static greylist-max-o tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 1706
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1707
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1708
    .local v0, "i":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 1709
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1710
    .local v4, "hour":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v5

    .line 1711
    .local v5, "minute":I
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v2

    :cond_2
    return-object v1

    .line 1708
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    :cond_3
    :goto_0
    return-object v1
.end method

.method private static greylist-max-o tryParseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 503
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 505
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static greylist-max-o tryParseLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .line 512
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    .line 514
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/Long;

    .line 521
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 523
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object p1
.end method

.method public static greylist tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 8
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 1535
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1536
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "schedule"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1540
    .local v2, "isSchedule":Z
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 1541
    :cond_1
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v4

    .line 1542
    .local v4, "start":[I
    const-string v5, "end"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v5

    .line 1543
    .local v5, "end":[I
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    .line 1544
    :cond_2
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 1545
    .local v3, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v6, "days"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-static {v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 1546
    aget v6, v4, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 1547
    aget v6, v4, v0

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 1548
    aget v6, v5, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 1549
    aget v0, v5, v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 1550
    const-string v0, "exitAtAlarm"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 1551
    return-object v3

    .line 1543
    .end local v3    # "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_3
    :goto_1
    return-object v3
.end method

.method private static greylist-max-o tryParseZenMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 1715
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1716
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method private static blacklist unsafeBoolean(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 929
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 930
    :catch_0
    move-exception v1

    .line 931
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist writeConditionXml(Landroid/service/notification/Condition;Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    const-string/jumbo v2, "summary"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    const-string/jumbo v2, "line1"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    iget-object v0, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    const-string/jumbo v2, "line2"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    iget v0, p0, Landroid/service/notification/Condition;->icon:I

    const-string/jumbo v2, "icon"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    iget v0, p0, Landroid/service/notification/Condition;->state:I

    const-string/jumbo v2, "state"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    iget v0, p0, Landroid/service/notification/Condition;->flags:I

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    return-void
.end method

.method public static blacklist writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/TypedXmlSerializer;)V
    .locals 4
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const-string/jumbo v2, "zen"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string/jumbo v2, "pkg"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "component"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 723
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 724
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 723
    const-string v2, "configActivity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    :cond_3
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "conditionId"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    :cond_4
    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    const-string v0, "creationTime"

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 731
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    const-string v2, "enabler"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    :cond_5
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_6

    .line 734
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Landroid/util/TypedXmlSerializer;)V

    .line 736
    :cond_6
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_7

    .line 737
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Landroid/util/TypedXmlSerializer;)V

    .line 739
    :cond_7
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    const-string/jumbo v2, "modified"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    return-void
.end method

.method private static blacklist writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V
    .locals 2
    .param p0, "attr"    # Ljava/lang/String;
    .param p1, "val"    # I
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    const-string v0, "callsFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 900
    const-string/jumbo v0, "messagesFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    const-string v0, "convosFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    if-eqz p1, :cond_3

    .line 906
    invoke-interface {p2, v1, p0, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 909
    :cond_1
    if-eqz p1, :cond_3

    .line 910
    invoke-interface {p2, v1, p0, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 901
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 902
    invoke-interface {p2, v1, p0, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    :cond_3
    :goto_1
    return-void
.end method

.method public static blacklist writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Landroid/util/TypedXmlSerializer;)V
    .locals 2
    .param p0, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    const-string v1, "callsFrom"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 876
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    const-string/jumbo v1, "messagesFrom"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 877
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    const-string/jumbo v1, "repeatCallers"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 879
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    const-string v1, "convosFrom"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 880
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    const-string v1, "alarms"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 881
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    const-string/jumbo v1, "media"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 882
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    const-string/jumbo v1, "system"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 883
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    const-string/jumbo v1, "reminders"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 884
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    const-string v1, "events"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 886
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    const-string/jumbo v1, "showFullScreenIntent"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 888
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    const-string/jumbo v1, "showLights"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 889
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    const-string/jumbo v1, "shoePeek"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 890
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    const-string/jumbo v1, "showStatusBarIcons"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 891
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    const-string/jumbo v1, "showBadges"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 892
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    const-string/jumbo v1, "showAmbient"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 893
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    const-string/jumbo v1, "showNotificationList"

    invoke-static {v1, v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILandroid/util/TypedXmlSerializer;)V

    .line 895
    return-void
.end method


# virtual methods
.method public greylist-max-o applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 6
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1306
    if-nez p1, :cond_0

    return-void

    .line 1307
    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 1308
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 1309
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 1310
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 1311
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 1312
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 1313
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 1314
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 1316
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 1317
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 1319
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    .line 1320
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1322
    :cond_9
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 1324
    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v0, v4, v5}, Landroid/service/notification/ZenModeConfig;->normalizeConversationSenders(ZII)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 1327
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v3, :cond_c

    .line 1328
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_b

    move v1, v2

    :cond_b
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 1330
    :cond_c
    return-void
.end method

.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 973
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 974
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 975
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 975
    return-object v1

    .line 977
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 978
    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 967
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 9
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .line 314
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 315
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-nez p1, :cond_0

    .line 316
    const-string v1, "config"

    const-string v2, "delete"

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->-$$Nest$maddLine(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v1

    return-object v1

    .line 318
    :cond_0
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v1, v2, :cond_1

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 321
    :cond_1
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eq v1, v2, :cond_2

    .line 322
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowAlarms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 324
    :cond_2
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eq v1, v2, :cond_3

    .line 325
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowMedia"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 327
    :cond_3
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eq v1, v2, :cond_4

    .line 328
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowSystem"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 330
    :cond_4
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eq v1, v2, :cond_5

    .line 331
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowCalls"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 333
    :cond_5
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eq v1, v2, :cond_6

    .line 334
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowReminders"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 336
    :cond_6
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v1, v2, :cond_7

    .line 337
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowEvents"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 339
    :cond_7
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v1, v2, :cond_8

    .line 340
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowRepeatCallers"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 342
    :cond_8
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v1, v2, :cond_9

    .line 343
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowMessages"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 345
    :cond_9
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v1, v2, :cond_a

    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "allowCallsFrom"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 348
    :cond_a
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-eq v1, v2, :cond_b

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "allowMessagesFrom"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 351
    :cond_b
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-eq v1, v2, :cond_c

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 352
    const-string/jumbo v3, "suppressedVisualEffects"

    invoke-virtual {v0, v3, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 355
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 356
    .local v1, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 357
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 358
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 359
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_f

    .line 360
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 361
    .local v4, "rule":Ljava/lang/String;
    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_1

    :cond_d
    move-object v5, v6

    .line 362
    .local v5, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_1
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 363
    .local v6, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "automaticRule["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->-$$Nest$smappendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 359
    .end local v4    # "rule":Ljava/lang/String;
    .end local v5    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "i":I
    :cond_f
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string/jumbo v5, "manualRule"

    invoke-static {v0, v5, v3, v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->-$$Nest$smappendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 367
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eq v3, v4, :cond_10

    .line 368
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 369
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 368
    const-string v5, "areChannelsBypassingDnd"

    invoke-virtual {v0, v5, v3, v4}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 371
    :cond_10
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 447
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 448
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 449
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    .line 450
    .local v2, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 461
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 462
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    if-ne v3, v4, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 450
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 471
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 472
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 476
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 471
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isValid()Z
    .locals 4

    .line 394
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 396
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 397
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 396
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 12

    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "priorityCategories":I
    const/4 v1, 0x1

    .line 1212
    .local v1, "priorityCallSenders":I
    const/4 v2, 0x1

    .line 1213
    .local v2, "priorityMessageSenders":I
    const/4 v3, 0x2

    .line 1214
    .local v3, "priorityConversationSenders":I
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-eqz v4, :cond_0

    .line 1215
    or-int/lit16 v0, v0, 0x100

    .line 1217
    :cond_0
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_1

    .line 1218
    or-int/lit8 v0, v0, 0x8

    .line 1220
    :cond_1
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_2

    .line 1221
    or-int/lit8 v0, v0, 0x4

    .line 1223
    :cond_2
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v4, :cond_3

    .line 1224
    or-int/lit8 v0, v0, 0x2

    .line 1226
    :cond_3
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v4, :cond_4

    .line 1227
    or-int/lit8 v0, v0, 0x1

    .line 1229
    :cond_4
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v4, :cond_5

    .line 1230
    or-int/lit8 v0, v0, 0x10

    .line 1232
    :cond_5
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v4, :cond_6

    .line 1233
    or-int/lit8 v0, v0, 0x20

    .line 1235
    :cond_6
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eqz v4, :cond_7

    .line 1236
    or-int/lit8 v0, v0, 0x40

    .line 1238
    :cond_7
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eqz v4, :cond_8

    .line 1239
    or-int/lit16 v0, v0, 0x80

    .line 1241
    :cond_8
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4, v1}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v1

    .line 1242
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v4, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    .line 1243
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-direct {p0, v4, v3}, Landroid/service/notification/ZenModeConfig;->getConversationSendersWithDefault(II)I

    move-result v3

    .line 1246
    new-instance v11, Landroid/app/NotificationManager$Policy;

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1247
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eqz v4, :cond_9

    .line 1248
    const/4 v4, 0x1

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    :goto_0
    move v9, v4

    move-object v4, v11

    move v5, v0

    move v6, v1

    move v7, v2

    move v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 1246
    return-object v11
.end method

.method public blacklist toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .locals 19
    .param p1, "zenPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 1041
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1042
    .local v2, "defaultPolicy":Landroid/app/NotificationManager$Policy;
    const/4 v3, 0x0

    .line 1043
    .local v3, "priorityCategories":I
    const/4 v4, 0x0

    .line 1044
    .local v4, "suppressedVisualEffects":I
    iget v5, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1045
    .local v5, "callSenders":I
    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1046
    .local v6, "messageSenders":I
    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 1048
    .local v7, "conversationSenders":I
    nop

    .line 1049
    const/4 v8, 0x1

    invoke-direct {v0, v8, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1048
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1050
    or-int/lit8 v3, v3, 0x1

    .line 1053
    :cond_0
    nop

    .line 1054
    const/4 v9, 0x2

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1053
    invoke-virtual {v1, v8, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1055
    or-int/lit8 v3, v3, 0x2

    .line 1058
    :cond_1
    nop

    .line 1059
    const/4 v11, 0x4

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1058
    invoke-virtual {v1, v9, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1060
    or-int/lit8 v3, v3, 0x4

    .line 1061
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v12

    invoke-direct {v0, v12, v6}, Landroid/service/notification/ZenModeConfig;->getNotificationPolicySenders(II)I

    move-result v6

    .line 1065
    :cond_2
    nop

    .line 1066
    const/16 v12, 0x100

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    .line 1065
    const/16 v14, 0x8

    invoke-virtual {v1, v14, v13}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1067
    or-int/lit16 v3, v3, 0x100

    .line 1068
    nop

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v13

    .line 1068
    invoke-direct {v0, v13, v7}, Landroid/service/notification/ZenModeConfig;->getConversationSendersWithDefault(II)I

    move-result v7

    .line 1072
    :cond_3
    nop

    .line 1073
    invoke-direct {v0, v14, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    .line 1072
    const/4 v15, 0x3

    invoke-virtual {v1, v15, v13}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1074
    or-int/lit8 v3, v3, 0x8

    .line 1075
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v13

    invoke-direct {v0, v13, v5}, Landroid/service/notification/ZenModeConfig;->getNotificationPolicySenders(II)I

    move-result v5

    .line 1079
    :cond_4
    nop

    .line 1080
    const/16 v13, 0x10

    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1079
    invoke-virtual {v1, v11, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1082
    or-int/lit8 v3, v3, 0x10

    .line 1085
    :cond_5
    nop

    .line 1086
    const/16 v12, 0x20

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v15

    .line 1085
    const/4 v12, 0x5

    invoke-virtual {v1, v12, v15}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1087
    or-int/lit8 v3, v3, 0x20

    .line 1090
    :cond_6
    nop

    .line 1091
    const/16 v15, 0x40

    invoke-direct {v0, v15, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1090
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1092
    or-int/lit8 v3, v3, 0x40

    .line 1095
    :cond_7
    const/4 v9, 0x7

    .line 1096
    const/16 v15, 0x80

    invoke-direct {v0, v15, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    .line 1095
    invoke-virtual {v1, v9, v13}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1097
    or-int/lit16 v3, v3, 0x80

    .line 1100
    :cond_8
    nop

    .line 1102
    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1100
    invoke-virtual {v1, v10, v9}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    .line 1105
    .local v9, "suppressFullScreenIntent":Z
    nop

    .line 1107
    invoke-direct {v0, v14, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v10

    .line 1105
    invoke-virtual {v1, v8, v10}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    xor-int/2addr v10, v8

    .line 1110
    .local v10, "suppressLights":Z
    nop

    .line 1112
    invoke-direct {v0, v15, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    .line 1110
    invoke-virtual {v1, v12, v13}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v12

    xor-int/2addr v8, v12

    .line 1115
    .local v8, "suppressAmbient":Z
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    if-eqz v8, :cond_9

    .line 1116
    or-int/lit8 v4, v4, 0x1

    .line 1119
    :cond_9
    if-eqz v9, :cond_a

    .line 1120
    or-int/lit8 v4, v4, 0x4

    .line 1123
    :cond_a
    if-eqz v10, :cond_b

    .line 1124
    or-int/lit8 v4, v4, 0x8

    .line 1127
    :cond_b
    nop

    .line 1128
    const/16 v12, 0x10

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1127
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1130
    or-int/lit8 v4, v4, 0x10

    .line 1131
    or-int/2addr v4, v13

    .line 1134
    :cond_c
    nop

    .line 1135
    const/16 v12, 0x20

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1134
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v12

    if-nez v12, :cond_d

    .line 1137
    or-int/lit8 v4, v4, 0x20

    .line 1140
    :cond_d
    nop

    .line 1141
    const/16 v12, 0x40

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1140
    invoke-virtual {v1, v11, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1143
    or-int/lit8 v4, v4, 0x40

    .line 1146
    :cond_e
    if-eqz v8, :cond_f

    .line 1147
    or-int/lit16 v4, v4, 0x80

    .line 1150
    :cond_f
    nop

    .line 1151
    const/16 v11, 0x100

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1150
    const/4 v12, 0x6

    invoke-virtual {v1, v12, v11}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_10

    .line 1153
    or-int/lit16 v4, v4, 0x100

    .line 1156
    :cond_10
    new-instance v11, Landroid/app/NotificationManager$Policy;

    iget v15, v2, Landroid/app/NotificationManager$Policy;->state:I

    move-object v12, v11

    move v13, v3

    move v14, v5

    move/from16 v17, v15

    move v15, v6

    move/from16 v16, v4

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v11
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    const-string v1, ",allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, ",allowMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string v1, ",allowSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, ",allowReminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string v1, ",allowEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string v1, ",allowCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    const-string v1, ",allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string v1, ",allowMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string v1, ",allowConversations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const-string v1, ",allowCallsFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string v1, ",allowMessagesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    const-string v1, ",allowConvFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 287
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    const-string v1, ",areChannelsBypassingDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, ",\nautomaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig;->rulesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, ",\nmanualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method public blacklist toZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 4

    .line 998
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 999
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 1000
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v1

    goto :goto_0

    .line 1001
    :cond_0
    move v1, v2

    .line 999
    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 1002
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1003
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_1

    .line 1004
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v1

    goto :goto_1

    .line 1005
    :cond_1
    move v1, v2

    .line 1003
    :goto_1
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 1006
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 1007
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 1008
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 1009
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 1010
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1011
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-eqz v1, :cond_2

    .line 1012
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v1

    goto :goto_2

    .line 1013
    :cond_2
    move v1, v2

    .line 1011
    :goto_2
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1014
    .local v0, "builder":Landroid/service/notification/ZenPolicy$Builder;
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-nez v1, :cond_3

    .line 1015
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    goto/16 :goto_a

    .line 1018
    :cond_3
    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1020
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1022
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1024
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1026
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1028
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_8

    :cond_9
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1030
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1033
    :goto_a
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 248
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 250
    .local v0, "len":I
    new-array v2, v0, [Ljava/lang/String;

    .line 251
    .local v2, "ids":[Ljava/lang/String;
    new-array v3, v0, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 252
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 253
    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4

    .line 254
    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v5, v3, v4

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 259
    .end local v0    # "len":I
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    :goto_1
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return-void
.end method

.method public blacklist writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "version"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    const/4 v0, 0x0

    const-string/jumbo v1, "zen"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    if-nez p2, :cond_0

    .line 634
    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 635
    iget v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    const-string/jumbo v3, "user"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    const-string v2, "allow"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 637
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const-string v4, "calls"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    const-string/jumbo v4, "repeatCallers"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const-string/jumbo v4, "messages"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    const-string/jumbo v4, "reminders"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 641
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const-string v4, "events"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const-string v4, "callsFrom"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    const-string/jumbo v4, "messagesFrom"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    const-string v4, "alarms"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const-string/jumbo v4, "media"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    const-string/jumbo v4, "system"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    const-string v4, "convos"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    const-string v4, "convosFrom"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    const-string v2, "disallow"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    const-string/jumbo v4, "visualEffects"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_1

    .line 656
    const-string/jumbo v2, "manual"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/TypedXmlSerializer;)V

    .line 658
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    :cond_1
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 661
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 662
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 663
    .local v4, "id":Ljava/lang/String;
    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 664
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v6, "automatic"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    const-string/jumbo v7, "ruleId"

    invoke-interface {p1, v0, v7, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    invoke-static {v5, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/TypedXmlSerializer;)V

    .line 667
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 670
    .end local v3    # "i":I
    :cond_2
    const-string/jumbo v3, "state"

    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    const-string v5, "areChannelsBypassingDnd"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    return-void
.end method
