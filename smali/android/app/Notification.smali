.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Colors;,
        Landroid/app/Notification$StandardTemplateParams;,
        Landroid/app/Notification$TemplateBindResult;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$TvExtender;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$BubbleMetadata;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$CallStyle;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$GroupAlertBehavior;,
        Landroid/app/Notification$NotificationVisibilityOverride;,
        Landroid/app/Notification$Visibility;,
        Landroid/app/Notification$Priority;,
        Landroid/app/Notification$NotificationFlags;,
        Landroid/app/Notification$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final whitelist BADGE_ICON_LARGE:I = 0x2

.field public static final whitelist BADGE_ICON_NONE:I = 0x0

.field public static final whitelist BADGE_ICON_SMALL:I = 0x1

.field public static final whitelist CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final whitelist CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final whitelist CATEGORY_CAR_EMERGENCY:Ljava/lang/String; = "car_emergency"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_INFORMATION:Ljava/lang/String; = "car_information"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_WARNING:Ljava/lang/String; = "car_warning"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final whitelist CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final whitelist CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final whitelist CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final whitelist CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final whitelist CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final whitelist CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final whitelist CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final whitelist CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final whitelist CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final whitelist CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final whitelist CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final whitelist CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final whitelist CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final whitelist CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final whitelist COLOR_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_INVALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALL:I = -0x1

.field public static final whitelist DEFAULT_LIGHTS:I = 0x4

.field public static final whitelist DEFAULT_SOUND:I = 0x1

.field public static final whitelist DEFAULT_VIBRATE:I = 0x2

.field public static final whitelist EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANSWER_COLOR:Ljava/lang/String; = "android.answerColor"

.field public static final whitelist EXTRA_ANSWER_INTENT:Ljava/lang/String; = "android.answerIntent"

.field public static final whitelist EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final whitelist EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final whitelist EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final greylist-max-o EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final whitelist EXTRA_CALL_IS_VIDEO:Ljava/lang/String; = "android.callIsVideo"

.field public static final whitelist EXTRA_CALL_PERSON:Ljava/lang/String; = "android.callPerson"

.field public static final blacklist EXTRA_CALL_TYPE:Ljava/lang/String; = "android.callType"

.field public static final whitelist EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final whitelist EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final whitelist EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final greylist-max-o EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final blacklist EXTRA_CONVERSATION_ICON:Ljava/lang/String; = "android.conversationIcon"

.field public static final whitelist EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final blacklist EXTRA_CONVERSATION_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "android.conversationUnreadMessageCount"

.field public static final whitelist EXTRA_DECLINE_COLOR:Ljava/lang/String; = "android.declineColor"

.field public static final whitelist EXTRA_DECLINE_INTENT:Ljava/lang/String; = "android.declineIntent"

.field public static final greylist-max-o EXTRA_FOREGROUND_APPS:Ljava/lang/String; = "android.foregroundApps"

.field public static final whitelist EXTRA_HANG_UP_INTENT:Ljava/lang/String; = "android.hangUpIntent"

.field public static final greylist-max-o EXTRA_HIDE_SMART_REPLIES:Ljava/lang/String; = "android.hideSmartReplies"

.field public static final whitelist EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final whitelist EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final whitelist EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final whitelist EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final blacklist EXTRA_MEDIA_REMOTE_DEVICE:Ljava/lang/String; = "android.mediaRemoteDevice"

.field public static final blacklist EXTRA_MEDIA_REMOTE_ICON:Ljava/lang/String; = "android.mediaRemoteIcon"

.field public static final blacklist EXTRA_MEDIA_REMOTE_INTENT:Ljava/lang/String; = "android.mediaRemoteIntent"

.field public static final whitelist EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final whitelist EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final whitelist EXTRA_MESSAGING_PERSON:Ljava/lang/String; = "android.messagingUser"

.field public static final whitelist EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final whitelist EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final whitelist EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final whitelist EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final whitelist EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final whitelist EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final whitelist EXTRA_PICTURE_ICON:Ljava/lang/String; = "android.pictureIcon"

.field public static final whitelist EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final whitelist EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final whitelist EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final greylist-max-o EXTRA_REDUCED_IMAGES:Ljava/lang/String; = "android.reduced.images"

.field public static final whitelist EXTRA_REMOTE_INPUT_DRAFT:Ljava/lang/String; = "android.remoteInputDraft"

.field public static final whitelist EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final blacklist EXTRA_REMOTE_INPUT_HISTORY_ITEMS:Ljava/lang/String; = "android.remoteInputHistoryItems"

.field public static final whitelist EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final whitelist EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final whitelist EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final greylist-max-o EXTRA_SHOW_REMOTE_INPUT_SPINNER:Ljava/lang/String; = "android.remoteInputSpinner"

.field public static final whitelist EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final whitelist EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final whitelist EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final whitelist EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final whitelist EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final whitelist EXTRA_VERIFICATION_ICON:Ljava/lang/String; = "android.verificationIcon"

.field public static final whitelist EXTRA_VERIFICATION_TEXT:Ljava/lang/String; = "android.verificationText"

.field public static final whitelist FLAG_AUTOGROUP_SUMMARY:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CANCEL:I = 0x10

.field public static final whitelist FLAG_BUBBLE:I = 0x1000

.field public static final greylist-max-o FLAG_CAN_COLORIZE:I = 0x800

.field public static final whitelist FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final whitelist FLAG_GROUP_SUMMARY:I = 0x200

.field public static final whitelist FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_INSISTENT:I = 0x4

.field public static final whitelist FLAG_LOCAL_ONLY:I = 0x100

.field public static final whitelist FLAG_NO_CLEAR:I = 0x20

.field public static final whitelist FLAG_ONGOING_EVENT:I = 0x2

.field public static final whitelist FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final whitelist FLAG_SHOW_LIGHTS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final whitelist FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final whitelist GROUP_ALERT_ALL:I = 0x0

.field public static final whitelist GROUP_ALERT_CHILDREN:I = 0x2

.field public static final whitelist GROUP_ALERT_SUMMARY:I = 0x1

.field public static final whitelist INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final blacklist MAX_ACTION_BUTTONS:I = 0x3

.field private static final greylist-max-o MAX_CHARSEQUENCE_LENGTH:I = 0x400

.field private static final blacklist MAX_LARGE_ICON_ASPECT_RATIO:F = 1.7777778f

.field private static final greylist-max-o MAX_REPLY_HISTORY:I = 0x5

.field private static final blacklist PLATFORM_STYLE_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_HIGH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_LOW:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MAX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MIN:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STANDARD_LAYOUTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Notification"

.field public static final whitelist VISIBILITY_PRIVATE:I = 0x0

.field public static final whitelist VISIBILITY_PUBLIC:I = 0x1

.field public static final whitelist VISIBILITY_SECRET:I = -0x1

.field public static blacklist processAllowlistToken:Landroid/os/IBinder;


# instance fields
.field public whitelist actions:[Landroid/app/Notification$Action;

.field public greylist allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist audioAttributes:Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist category:Ljava/lang/String;

.field public whitelist color:I

.field public whitelist contentIntent:Landroid/app/PendingIntent;

.field public whitelist contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o creationTime:J

.field public whitelist defaults:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist deleteIntent:Landroid/app/PendingIntent;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist flags:I

.field public whitelist fullScreenIntent:Landroid/app/PendingIntent;

.field public whitelist headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist iconLevel:I

.field public whitelist largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledARGB:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOffMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOnMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mAllowSystemGeneratedContextualActions:Z

.field private blacklist mAllowlistToken:Landroid/os/IBinder;

.field private greylist-max-o mBadgeIcon:I

.field private blacklist mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private greylist mChannelId:Ljava/lang/String;

.field private blacklist mFgsDeferBehavior:I

.field private greylist-max-o mGroupAlertBehavior:I

.field private greylist mGroupKey:Ljava/lang/String;

.field private greylist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private greylist-max-o mSettingsText:Ljava/lang/CharSequence;

.field private greylist-max-o mShortcutId:Ljava/lang/String;

.field private greylist mSmallIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mSortKey:Ljava/lang/String;

.field private greylist-max-o mTimeout:J

.field private greylist-max-o mUsesStandardHeader:Z

.field public whitelist number:I

.field public whitelist priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist publicVersion:Landroid/app/Notification;

.field public whitelist sound:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist tickerText:Ljava/lang/CharSequence;

.field public whitelist tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist vibrate:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist visibility:I

.field public whitelist when:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcreationTime(Landroid/app/Notification;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcreationTime(Landroid/app/Notification;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/Notification;->creationTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mBadgeIcon:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeout(Landroid/app/Notification;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPLATFORM_STYLE_CLASSES()Ljava/util/List;
    .locals 1

    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTANDARD_LAYOUTS()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/Notification;->buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 454
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    .line 456
    const v1, 0x10900b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 457
    const v1, 0x10900bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 458
    const v1, 0x10900b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 459
    const v1, 0x10900bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 460
    const v1, 0x10900bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 461
    const v1, 0x10900c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 462
    const v1, 0x10900c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 463
    const v1, 0x10900ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 464
    const v1, 0x10900be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 465
    const v1, 0x10900c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 466
    const v1, 0x10900b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 467
    const v1, 0x10900bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 468
    const v1, 0x10900b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 469
    const v1, 0x10900b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 519
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 520
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 710
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Notification$BigTextStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Notification$BigPictureStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/Notification$InboxStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/Notification$MediaStyle;

    aput-object v4, v0, v3

    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    aput-object v3, v0, v1

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-class v2, Landroid/app/Notification$MessagingStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Landroid/app/Notification$CallStyle;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    .line 3197
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 2503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 512
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 528
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 811
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1056
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1606
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1624
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1629
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 2505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    .line 2506
    iput v0, p0, Landroid/app/Notification;->priority:I

    .line 2507
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;J)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 512
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 528
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 811
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1056
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1606
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1624
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2542
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 2543
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2544
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 2545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    .line 2546
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    .line 2515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 512
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 528
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 811
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1056
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1606
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1624
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1629
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2516
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2517
    invoke-virtual {v1, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2518
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2519
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2520
    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2521
    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2522
    const/high16 v2, 0x2000000

    invoke-static {p1, v0, p8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2524
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 2525
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    .line 512
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 528
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 811
    iput v0, p0, Landroid/app/Notification;->color:I

    .line 1056
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1606
    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 1624
    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2555
    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    .line 2557
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 2558
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 3393
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 3394
    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 3400
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3401
    return-void
.end method

.method public static greylist-max-o areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .locals 10
    .param p0, "first"    # Landroid/app/Notification;
    .param p1, "second"    # Landroid/app/Notification;

    .line 3215
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3216
    .local v0, "firstAs":[Landroid/app/Notification$Action;
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3217
    .local v1, "secondAs":[Landroid/app/Notification$Action;
    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 3218
    :cond_1
    return v2

    .line 3220
    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 3221
    array-length v4, v0

    array-length v5, v1

    if-eq v4, v5, :cond_3

    .line 3222
    return v2

    .line 3224
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_a

    .line 3225
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 3226
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3225
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3227
    return v2

    .line 3229
    :cond_4
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 3230
    .local v5, "firstRs":[Landroid/app/RemoteInput;
    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    .line 3231
    .local v6, "secondRs":[Landroid/app/RemoteInput;
    if-nez v5, :cond_5

    .line 3232
    new-array v5, v3, [Landroid/app/RemoteInput;

    .line 3234
    :cond_5
    if-nez v6, :cond_6

    .line 3235
    new-array v6, v3, [Landroid/app/RemoteInput;

    .line 3237
    :cond_6
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_7

    .line 3238
    return v2

    .line 3240
    :cond_7
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_9

    .line 3241
    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v7

    .line 3242
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3241
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 3243
    return v2

    .line 3240
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3224
    .end local v5    # "firstRs":[Landroid/app/RemoteInput;
    .end local v6    # "secondRs":[Landroid/app/RemoteInput;
    .end local v7    # "j":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3248
    .end local v4    # "i":I
    :cond_a
    return v3
.end method

.method public static greylist-max-o areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .locals 3
    .param p0, "first"    # Landroid/app/Notification$Builder;
    .param p1, "second"    # Landroid/app/Notification$Builder;

    .line 3268
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3269
    return v1

    .line 3272
    :cond_0
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3273
    return v1

    .line 3275
    :cond_1
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3276
    return v1

    .line 3278
    :cond_2
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3279
    return v1

    .line 3282
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4
    .param p0, "first"    # Landroid/widget/RemoteViews;
    .param p1, "second"    # Landroid/widget/RemoteViews;

    .line 3286
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 3287
    return v0

    .line 3289
    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    .line 3290
    :cond_2
    return v1

    .line 3293
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3294
    return v1

    .line 3297
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3298
    return v1

    .line 3301
    :cond_5
    return v0
.end method

.method public static greylist-max-o areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .locals 2
    .param p0, "first"    # Landroid/app/Notification$Builder;
    .param p1, "second"    # Landroid/app/Notification$Builder;

    .line 3255
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3256
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3258
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3259
    return v1

    .line 3261
    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z

    move-result v0

    return v0
.end method

.method private static blacklist buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "template"    # Landroid/widget/RemoteViews;
    .param p2, "customContent"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p4, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 7157
    const/4 v0, -0x1

    .line 7158
    .local v0, "childIndex":I
    const v1, 0x10203ea

    if-eqz p2, :cond_1

    .line 7161
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 7162
    iget-boolean v2, p3, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 7163
    const v2, 0x10203f3

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeFromParent(I)V

    .line 7167
    invoke-static {p1, p3, v3}, Landroid/app/Notification$Builder;->-$$Nest$smsetHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    goto :goto_0

    .line 7170
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 7171
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p4, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v5, 0x10501e9

    .line 7172
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 7173
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    .line 7171
    invoke-virtual {v4, p1, v1, v5}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 7175
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    const v2, 0x102000d

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    .line 7180
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const v5, 0x10900b4

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 7182
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    const v4, 0x1020288

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p2, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 7183
    invoke-virtual {p1, v1, v2, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 7185
    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 7186
    const/4 v0, 0x0

    .line 7188
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_1
    const v2, 0x10203e6

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 7191
    return-void
.end method

.method private greylist-max-o fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 1
    .param p1, "original"    # Landroid/os/Parcelable;
    .param p2, "extraName"    # Ljava/lang/String;

    .line 3325
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3326
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3328
    :cond_0
    return-void
.end method

.method private greylist-max-o fixDuplicateExtras()V
    .locals 2

    .line 3315
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3316
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon"

    invoke-direct {p0, v0, v1}, Landroid/app/Notification;->fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 3318
    :cond_0
    return-void
.end method

.method public static greylist getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 7146
    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 7147
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7148
    return-object v1

    .line 7150
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_0
    goto :goto_0

    .line 7151
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 12383
    .local p2, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 12384
    .local v0, "array":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 12385
    .local v1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 12388
    :cond_0
    array-length v2, v0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 12389
    .local v2, "typedArray":[Landroid/os/Parcelable;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 12390
    aget-object v4, v0, v3

    aput-object v4, v2, v3

    .line 12389
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12392
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 12393
    return-object v2

    .line 12386
    .end local v2    # "typedArray":[Landroid/os/Parcelable;, "[TT;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method private greylist-max-o hasColorizedPermission()Z
    .locals 1

    .line 7068
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o hasLargeIcon()Z
    .locals 1

    .line 7097
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

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

.method public static greylist-max-o priorityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "pri"    # I

    .line 3525
    packed-switch p0, :pswitch_data_0

    .line 3537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3535
    :pswitch_0
    const-string v0, "MAX"

    return-object v0

    .line 3533
    :pswitch_1
    const-string v0, "HIGH"

    return-object v0

    .line 3531
    :pswitch_2
    const-string v0, "DEFAULT"

    return-object v0

    .line 3529
    :pswitch_3
    const-string v0, "LOW"

    return-object v0

    .line 3527
    :pswitch_4
    const-string v0, "MIN"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o readFromParcelImpl(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2564
    .local v0, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2565
    if-nez v1, :cond_0

    .line 2566
    sget-object v1, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2569
    :cond_0
    const-class v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2571
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 2572
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    .line 2573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2574
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2575
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2576
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    .line 2579
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    .line 2580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2581
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2583
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 2584
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2586
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2587
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2589
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2590
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2592
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2593
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2595
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2596
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2598
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 2599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 2600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2601
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2604
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 2605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 2606
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2608
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    .line 2609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    .line 2610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 2611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 2612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    .line 2614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 2615
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2618
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    .line 2620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 2624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 2626
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2627
    invoke-direct {p0}, Landroid/app/Notification;->fixDuplicateExtras()V

    .line 2629
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 2632
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2635
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2636
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2639
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->visibility:I

    .line 2641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 2642
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2645
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->color:I

    .line 2647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 2650
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    .line 2652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 2653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 2656
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 2657
    sget-object v1, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    iput-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 2660
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    .line 2662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 2663
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 2666
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 2667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 2668
    sget-object v1, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 2671
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 2674
    return-void
.end method

.method private greylist-max-o reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLowRam"    # Z

    .line 6951
    if-eqz p1, :cond_2

    .line 6952
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6953
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p3, :cond_0

    .line 6954
    const v1, 0x10501f1

    goto :goto_0

    .line 6955
    :cond_0
    const v1, 0x10501f0

    .line 6953
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6956
    .local v1, "maxWidth":I
    if-eqz p3, :cond_1

    .line 6957
    const v2, 0x10501ef

    goto :goto_1

    .line 6958
    :cond_1
    const v2, 0x10501ee

    .line 6956
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6959
    .local v2, "maxHeight":I
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->reduceImageSizes(II)V

    .line 6961
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    :cond_2
    return-void
.end method

.method private static greylist-max-o removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 15
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 2946
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    .line 2947
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 2948
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 2949
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2950
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    .line 2951
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 2952
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 2953
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 2955
    :cond_0
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_1

    .line 2956
    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 2957
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    .line 2958
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    .line 2959
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v10

    const/4 v11, -0x1

    .line 2961
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 2962
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v6, v14

    .line 2963
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    goto :goto_1

    :cond_1
    instance-of v7, v6, Landroid/text/style/RelativeSizeSpan;

    if-nez v7, :cond_3

    instance-of v7, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_2

    .line 2965
    goto :goto_2

    .line 2967
    :cond_2
    move-object v6, v5

    .line 2969
    :goto_1
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 2970
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 2969
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2950
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2972
    :cond_4
    return-object v2

    .line 2974
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_5
    return-object p0
.end method

.method public static greylist-max-o safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 2933
    if-nez p0, :cond_0

    return-object p0

    .line 2934
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    .line 2935
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 2937
    :cond_1
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 2938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2942
    :cond_2
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o visibilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "vis"    # I

    .line 3509
    packed-switch p0, :pswitch_data_0

    .line 3517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3513
    :pswitch_0
    const-string v0, "PUBLIC"

    return-object v0

    .line 3511
    :pswitch_1
    const-string v0, "PRIVATE"

    return-object v0

    .line 3515
    :pswitch_2
    const-string v0, "SECRET"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 2799
    .local p0, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    if-nez p1, :cond_0

    return-void

    .line 2800
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    .line 2801
    .local v0, "iconType":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2802
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2804
    :cond_2
    return-void
.end method

.method private greylist-max-o writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3022
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3024
    iget-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3025
    iget-wide v1, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3026
    iget-wide v1, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3027
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/Notification;->icon:I

    if-eqz v1, :cond_0

    .line 3029
    const-string v2, ""

    invoke-static {v2, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3031
    :cond_0
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3032
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3035
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3037
    :goto_0
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3038
    iget-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 3039
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3040
    iget-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 3042
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3044
    :goto_1
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 3045
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3046
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 3048
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    :goto_2
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 3051
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3052
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 3054
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3056
    :goto_3
    iget-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    .line 3057
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3058
    iget-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 3060
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3062
    :goto_4
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    .line 3063
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3064
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 3066
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3068
    :goto_5
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 3070
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3072
    :cond_7
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_8

    .line 3073
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 3076
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3079
    :goto_6
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3080
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3082
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_9

    .line 3083
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3084
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 3086
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3088
    :goto_7
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v1, :cond_a

    .line 3091
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3092
    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 3094
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    :goto_8
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3098
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3099
    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3101
    iget v1, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3103
    iget-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_b

    .line 3104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3105
    iget-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 3107
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3110
    :goto_9
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3112
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3114
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3116
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3118
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3120
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3122
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c

    .line 3123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3124
    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 3126
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3129
    :goto_a
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_d

    .line 3130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 3133
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3136
    :goto_b
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_e

    .line 3139
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3140
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 3142
    :cond_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3145
    :goto_c
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3147
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3148
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3149
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_d

    .line 3151
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3153
    :goto_d
    iget-wide v3, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3155
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_e

    .line 3159
    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    :goto_e
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_11

    .line 3163
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3164
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1, p1, v2}, Landroid/content/LocusId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 3166
    :cond_11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    :goto_f
    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3171
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_12

    .line 3172
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3173
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_10

    .line 3175
    :cond_12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    :goto_10
    iget v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v1, :cond_13

    .line 3181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3182
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v0, p1, v2}, Landroid/app/Notification$BubbleMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 3184
    :cond_13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3187
    :goto_11
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3189
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3192
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification;
    .locals 2

    .line 2678
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2679
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 2680
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneInto(Landroid/app/Notification;Z)V
    .locals 4
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    .line 2689
    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iput-object v0, p1, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 2690
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    .line 2691
    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    iput-wide v0, p1, Landroid/app/Notification;->creationTime:J

    .line 2692
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2693
    iget v0, p0, Landroid/app/Notification;->number:I

    iput v0, p1, Landroid/app/Notification;->number:I

    .line 2696
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2697
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2698
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2700
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 2701
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2703
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 2704
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2706
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 2707
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2709
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_3

    .line 2710
    iput-object v0, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2712
    :cond_3
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    iput v0, p1, Landroid/app/Notification;->iconLevel:I

    .line 2713
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2714
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 2715
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_4

    .line 2716
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2719
    :cond_4
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 2720
    .local v0, "vibrate":[J
    if-eqz v0, :cond_5

    .line 2721
    array-length v1, v0

    .line 2722
    .local v1, "N":I
    new-array v2, v1, [J

    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    .line 2723
    .local v2, "vib":[J
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2726
    .end local v1    # "N":I
    .end local v2    # "vib":[J
    :cond_5
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    iput v1, p1, Landroid/app/Notification;->ledARGB:I

    .line 2727
    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    iput v1, p1, Landroid/app/Notification;->ledOnMS:I

    .line 2728
    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    iput v1, p1, Landroid/app/Notification;->ledOffMS:I

    .line 2729
    iget v1, p0, Landroid/app/Notification;->defaults:I

    iput v1, p1, Landroid/app/Notification;->defaults:I

    .line 2731
    iget v1, p0, Landroid/app/Notification;->flags:I

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 2733
    iget v1, p0, Landroid/app/Notification;->priority:I

    iput v1, p1, Landroid/app/Notification;->priority:I

    .line 2735
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 2737
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 2739
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 2741
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 2743
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2745
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    goto :goto_0

    .line 2746
    :catch_0
    move-exception v1

    .line 2747
    .local v1, "e":Landroid/os/BadParcelableException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not unparcel extras from notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2748
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2752
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2753
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 2756
    :cond_7
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_9

    .line 2757
    array-length v1, v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2758
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 2759
    aget-object v2, v2, v1

    if-eqz v2, :cond_8

    .line 2760
    iget-object v3, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v2

    aput-object v2, v3, v1

    .line 2758
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2765
    .end local v1    # "i":I
    :cond_9
    if-eqz p2, :cond_a

    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    .line 2766
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2769
    :cond_a
    if-eqz p2, :cond_b

    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    .line 2770
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2773
    :cond_b
    iget v1, p0, Landroid/app/Notification;->visibility:I

    iput v1, p1, Landroid/app/Notification;->visibility:I

    .line 2775
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_c

    .line 2776
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2777
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, v1, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 2780
    :cond_c
    iget v1, p0, Landroid/app/Notification;->color:I

    iput v1, p1, Landroid/app/Notification;->color:I

    .line 2782
    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    .line 2783
    iget-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    iput-wide v1, p1, Landroid/app/Notification;->mTimeout:J

    .line 2784
    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    .line 2785
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    iput-object v1, p1, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    .line 2786
    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    iput v1, p1, Landroid/app/Notification;->mBadgeIcon:I

    .line 2787
    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    .line 2788
    iget v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p1, Landroid/app/Notification;->mGroupAlertBehavior:I

    .line 2789
    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    iput v1, p1, Landroid/app/Notification;->mFgsDeferBehavior:I

    .line 2790
    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p1, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 2791
    iget-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    iput-boolean v1, p1, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    .line 2793
    if-nez p2, :cond_d

    .line 2794
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 2796
    :cond_d
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 2978
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3407
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3408
    .local v0, "token":J
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3409
    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3410
    const-wide v4, 0x10500000003L

    iget v2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3411
    const-wide v4, 0x10500000004L

    iget v2, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3412
    const-wide v4, 0x10900000005L

    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3413
    const-wide v4, 0x10900000006L

    iget-object v2, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3414
    const-wide v4, 0x10900000007L

    iget-object v2, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3415
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_1

    .line 3416
    const-wide v4, 0x10500000008L

    array-length v2, v2

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3418
    :cond_1
    iget v2, p0, Landroid/app/Notification;->visibility:I

    const/4 v4, -0x1

    if-lt v2, v4, :cond_2

    if-gt v2, v3, :cond_2

    .line 3419
    const-wide v3, 0x10e00000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3421
    :cond_2
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_3

    .line 3422
    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3424
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3425
    return-void
.end method

.method public whitelist findRemoteInputActionPair(Z)Landroid/util/Pair;
    .locals 12
    .param p1, "requiresFreeform"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Landroid/app/RemoteInput;",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 3724
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3725
    return-object v1

    .line 3727
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    .line 3728
    .local v5, "action":Landroid/app/Notification$Action;
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3729
    goto :goto_2

    .line 3731
    :cond_1
    const/4 v6, 0x0

    .line 3732
    .local v6, "resultRemoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 3733
    .local v10, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-nez v11, :cond_2

    if-nez p1, :cond_3

    .line 3734
    :cond_2
    move-object v6, v10

    .line 3732
    .end local v10    # "remoteInput":Landroid/app/RemoteInput;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3737
    :cond_4
    if-eqz v6, :cond_5

    .line 3738
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 3727
    .end local v5    # "action":Landroid/app/Notification$Action;
    .end local v6    # "resultRemoteInput":Landroid/app/RemoteInput;
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3741
    :cond_6
    return-object v1
.end method

.method public whitelist getAllowSystemGeneratedContextualActions()Z
    .locals 1

    .line 3652
    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return v0
.end method

.method public whitelist getBadgeIconType()I
    .locals 1

    .line 3590
    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    return v0
.end method

.method public whitelist getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .locals 1

    .line 3636
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object v0
.end method

.method public greylist getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3560
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .locals 1

    .line 3567
    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContextualActions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 3749
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3751
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3752
    .local v0, "contextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3753
    .local v4, "action":Landroid/app/Notification$Action;
    invoke-virtual {v4}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3754
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3752
    .end local v4    # "action":Landroid/app/Notification$Action;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3757
    :cond_2
    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .locals 1

    .line 1027
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroupAlertBehavior()I
    .locals 1

    .line 3627
    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return v0
.end method

.method public whitelist getLargeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 3682
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .locals 1

    .line 3611
    iget-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public greylist-max-o getNotificationStyle()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .line 7034
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7036
    .local v0, "templateClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7037
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 7039
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSettingsText()Ljava/lang/CharSequence;
    .locals 1

    .line 3618
    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .locals 1

    .line 3600
    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 3664
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getSortKey()Ljava/lang/String;
    .locals 1

    .line 1045
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3573
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public whitelist getTimeoutAfter()J
    .locals 2

    .line 3581
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public greylist-max-o hasCompletedProgress()Z
    .locals 4

    .line 3546
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3547
    const-string v3, "android.progressMax"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3551
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3552
    return v2

    .line 3554
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 3548
    :cond_3
    :goto_0
    return v2
.end method

.method public whitelist hasImage()Z
    .locals 6

    .line 7120
    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 7121
    const-string v2, "android.messages"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 7122
    .local v0, "messages":[Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7123
    nop

    .line 7124
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 7123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    .line 7125
    .local v3, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7126
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7127
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7128
    return v1

    .line 7130
    .end local v3    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_0
    goto :goto_0

    .line 7132
    .end local v0    # "messages":[Landroid/os/Parcelable;
    :cond_1
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7133
    return v1

    .line 7134
    :cond_3
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7135
    return v1

    .line 7137
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBubbleNotification()Z
    .locals 1

    .line 7093
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isColorized()Z
    .locals 2

    .line 7059
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7060
    invoke-direct {p0}, Landroid/app/Notification;->hasColorizedPermission()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7059
    :goto_0
    return v0
.end method

.method public blacklist isForegroundDisplayForceDeferred()Z
    .locals 2

    .line 7026
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isForegroundService()Z
    .locals 1

    .line 6968
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isGroupChild()Z
    .locals 1

    .line 3698
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isGroupSummary()Z
    .locals 1

    .line 3690
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isMediaNotification()Z
    .locals 7

    .line 7077
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 7078
    .local v0, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 7079
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 7081
    .local v1, "isMediaStyle":Z
    :goto_1
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v5, Landroid/media/session/MediaSession$Token;

    const-string v6, "android.mediaSession"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 7084
    .local v4, "hasMediaSession":Z
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public blacklist isStyle(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;)Z"
        }
    .end annotation

    .line 7047
    .local p1, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7048
    .local v0, "templateClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method synthetic blacklist lambda$writeToParcel$0$android-app-Notification(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "out"    # Landroid/os/Parcel;
    .param p4, "outFlags"    # I

    .line 2996
    if-ne p1, p3, :cond_1

    .line 2997
    monitor-enter p0

    .line 2998
    :try_start_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 2999
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 3001
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3002
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3004
    :cond_1
    :goto_0
    return-void
.end method

.method public final greylist-max-o lightenPayload()V
    .locals 7

    .line 2901
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 2902
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2903
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2904
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2905
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2906
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2907
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2908
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 2909
    .local v1, "N":I
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2910
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2911
    aget-object v4, v2, v3

    .line 2912
    .local v4, "key":Ljava/lang/String;
    const-string v5, "android.tv.EXTENSIONS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2913
    goto :goto_1

    .line 2915
    :cond_0
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2916
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/os/Parcelable;

    if-nez v6, :cond_1

    instance-of v6, v5, [Landroid/os/Parcelable;

    if-nez v6, :cond_1

    instance-of v6, v5, Landroid/util/SparseArray;

    if-nez v6, :cond_1

    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 2921
    :cond_1
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2910
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2925
    .end local v0    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "N":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 6914
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.reduced.images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6915
    return-void

    .line 6917
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 6919
    .local v0, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 6921
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 6922
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 6923
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6924
    .local v2, "resources":Landroid/content/res/Resources;
    nop

    .line 6925
    if-eqz v0, :cond_2

    const v4, 0x105021e

    goto :goto_0

    .line 6926
    :cond_2
    const v4, 0x105021d

    .line 6924
    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 6927
    .local v4, "maxSize":I
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 6930
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "maxSize":I
    :cond_3
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 6931
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6932
    .restart local v2    # "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v4

    .line 6933
    .local v4, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-eqz v0, :cond_5

    .line 6934
    const v5, 0x105021b

    goto :goto_1

    .line 6935
    :cond_5
    const v5, 0x105021a

    .line 6933
    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 6936
    .local v5, "maxSize":I
    iget-object v6, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_6

    .line 6937
    invoke-virtual {v6, v5, v5}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 6939
    :cond_6
    iget-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    .line 6940
    invoke-static {v6, v5, v5}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6943
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    .end local v5    # "maxSize":I
    :cond_7
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 6944
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 6945
    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    .line 6946
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6947
    return-void
.end method

.method public blacklist setAllowlistToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3386
    iput-object p1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    .line 3387
    return-void
.end method

.method public blacklist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V
    .locals 0
    .param p1, "data"    # Landroid/app/Notification$BubbleMetadata;

    .line 3644
    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 3645
    return-void
.end method

.method public greylist setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3352
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 3353
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Notification"

    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3357
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 3358
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.showWhen"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3362
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3365
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p2, :cond_2

    .line 3366
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3368
    :cond_2
    if-eqz p3, :cond_3

    .line 3369
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3371
    :cond_3
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3373
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 3374
    return-void
.end method

.method public greylist setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 3673
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3674
    return-void
.end method

.method public blacklist shouldShowForegroundImmediately()Z
    .locals 4

    .line 6999
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7000
    return v1

    .line 7004
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 7005
    return v3

    .line 7010
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7011
    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7012
    const-string/jumbo v2, "navigation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 7018
    :cond_2
    return v3

    .line 7014
    :cond_3
    :goto_0
    return v1
.end method

.method public greylist-max-o showsChronometer()Z
    .locals 4

    .line 7113
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o showsTime()Z
    .locals 4

    .line 7105
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o suppressAlertingDueToGrouping()Z
    .locals 3

    .line 3705
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3706
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3707
    return v1

    .line 3708
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3709
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3710
    return v1

    .line 3712
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 3429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3430
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Notification(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3432
    const-string v1, " shortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    const-string v1, " contentView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3435
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    .line 3436
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3437
    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3440
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    :goto_0
    const-string v1, " vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    const-string v3, "default"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 3444
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3445
    :cond_1
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_4

    .line 3446
    array-length v1, v1

    sub-int/2addr v1, v4

    .line 3447
    .local v1, "N":I
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 3449
    iget-object v6, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v6, v6, v5

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3450
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3448
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3452
    .end local v5    # "i":I
    :cond_2
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 3453
    iget-object v5, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3455
    :cond_3
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    .end local v1    # "N":I
    goto :goto_2

    .line 3457
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3459
    :goto_2
    const-string v1, " sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3460
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 3461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3462
    :cond_5
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 3463
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3465
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    :goto_3
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 3468
    const-string v1, " tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3470
    :cond_7
    const-string v1, " defaults=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/app/Notification;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, " color=0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3475
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 3476
    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3479
    :cond_8
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3480
    const-string v1, " groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    :cond_9
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 3484
    const-string v1, " sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_a
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_b

    .line 3488
    const-string v1, " actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3491
    :cond_b
    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_c

    .line 3494
    const-string v1, " publicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3497
    :cond_c
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_d

    .line 3498
    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3501
    :cond_d
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2814
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2816
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2817
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2818
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2819
    :cond_2
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2821
    :cond_3
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2822
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2824
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_4

    .line 2825
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 2826
    .local v3, "action":Landroid/app/Notification$Action;
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2825
    .end local v3    # "action":Landroid/app/Notification$Action;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2830
    :cond_4
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 2831
    const-class v1, Landroid/graphics/drawable/Icon;

    const-string v2, "android.largeIcon.big"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2832
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/graphics/drawable/Icon;

    const-string v2, "android.pictureIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2838
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.audioContents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2839
    .local v0, "audioContentsUri":Ljava/lang/Object;
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 2840
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 2841
    :cond_5
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2842
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2845
    :cond_6
    :goto_1
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2846
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2849
    :cond_7
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people.list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2850
    .local v1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2851
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 2852
    .local v3, "p":Landroid/app/Person;
    invoke-virtual {v3}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2853
    .end local v3    # "p":Landroid/app/Person;
    goto :goto_2

    .line 2856
    :cond_8
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v3, Landroid/app/Person;

    const-string v4, "android.messagingUser"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    .line 2857
    .local v2, "person":Landroid/app/Person;
    if-eqz v2, :cond_9

    .line 2858
    invoke-virtual {v2}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2862
    .end local v0    # "audioContentsUri":Ljava/lang/Object;
    .end local v1    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v2    # "person":Landroid/app/Person;
    :cond_9
    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 2863
    const-string v1, "android.messages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 2864
    .local v0, "messages":[Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2865
    nop

    .line 2866
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    .line 2865
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 2867
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2869
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v3

    .line 2870
    .local v3, "senderPerson":Landroid/app/Person;
    if-eqz v3, :cond_a

    .line 2871
    invoke-virtual {v3}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2873
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v3    # "senderPerson":Landroid/app/Person;
    :cond_a
    goto :goto_3

    .line 2876
    :cond_b
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.messages.historic"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 2877
    .local v1, "historic":[Landroid/os/Parcelable;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2878
    nop

    .line 2879
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 2878
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    .line 2880
    .local v3, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2882
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v4

    .line 2883
    .local v4, "senderPerson":Landroid/app/Person;
    if-eqz v4, :cond_c

    .line 2884
    invoke-virtual {v4}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2886
    .end local v3    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v4    # "senderPerson":Landroid/app/Person;
    :cond_c
    goto :goto_4

    .line 2890
    .end local v0    # "messages":[Landroid/os/Parcelable;
    .end local v1    # "historic":[Landroid/os/Parcelable;
    :cond_d
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v0, :cond_e

    .line 2891
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2893
    :cond_e
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2992
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2993
    .local v0, "collectPendingIntents":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2994
    new-instance v1, Landroid/app/Notification$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/Notification$$ExternalSyntheticLambda0;-><init>(Landroid/app/Notification;Landroid/os/Parcel;)V

    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3009
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 3010
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3012
    :try_start_1
    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 3013
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3015
    if-eqz v0, :cond_2

    .line 3016
    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3019
    :cond_2
    return-void

    .line 3013
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "collectPendingIntents":Z
    .end local p0    # "this":Landroid/app/Notification;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3015
    .restart local v0    # "collectPendingIntents":Z
    .restart local p0    # "this":Landroid/app/Notification;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 3016
    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    .line 3018
    :cond_3
    throw v2
.end method
