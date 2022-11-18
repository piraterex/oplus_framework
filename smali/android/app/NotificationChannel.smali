.class public final Landroid/app/NotificationChannel;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationChannel$NotificationChannelWrapper;
    }
.end annotation


# static fields
.field public static final blacklist ALLOW_BUBBLE_OFF:I = 0x0

.field public static final blacklist ALLOW_BUBBLE_ON:I = 0x1

.field private static final blacklist ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubbles"

.field private static final greylist-max-o ATT_BLOCKABLE_SYSTEM:Ljava/lang/String; = "blockable_system"

.field private static final greylist-max-o ATT_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final blacklist ATT_CONVERSATION_ID:Ljava/lang/String; = "conv_id"

.field private static final greylist-max-o ATT_DELETED:Ljava/lang/String; = "deleted"

.field private static final blacklist ATT_DELETED_TIME_MS:Ljava/lang/String; = "del_time"

.field private static final blacklist ATT_DEMOTE:Ljava/lang/String; = "dem"

.field private static final greylist-max-o ATT_DESC:Ljava/lang/String; = "desc"

.field private static final greylist-max-o ATT_FG_SERVICE_SHOWN:Ljava/lang/String; = "fgservice"

.field private static final greylist-max-o ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o ATT_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final blacklist ATT_IMP_CONVERSATION:Ljava/lang/String; = "imp_conv"

.field private static final greylist-max-o ATT_LIGHTS:Ljava/lang/String; = "lights"

.field private static final greylist-max-o ATT_LIGHT_COLOR:Ljava/lang/String; = "light_color"

.field private static final greylist-max-o ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATT_ORIG_IMP:Ljava/lang/String; = "orig_imp"

.field private static final blacklist ATT_PARENT_CHANNEL:Ljava/lang/String; = "parent"

.field private static final greylist-max-o ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final greylist-max-o ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final greylist-max-o ATT_SOUND:Ljava/lang/String; = "sound"

.field private static final greylist-max-o ATT_USAGE:Ljava/lang/String; = "usage"

.field private static final greylist-max-o ATT_USER_LOCKED:Ljava/lang/String; = "locked"

.field private static final greylist-max-o ATT_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final greylist-max-o ATT_VIBRATION_ENABLED:Ljava/lang/String; = "vibration_enabled"

.field private static final greylist-max-o ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final blacklist CONVERSATION_CHANNEL_ID_FORMAT:Ljava/lang/String; = "%1$s : %2$s"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_ALLOW_BUBBLE:I = -0x1

.field public static final whitelist DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final greylist-max-o DEFAULT_DELETED:Z = false

.field private static final blacklist DEFAULT_DELETION_TIME_MS:J = -0x1L

.field private static final greylist-max-o DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final greylist-max-o DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final greylist-max-o DEFAULT_SHOW_BADGE:Z = true

.field private static final greylist-max-o DEFAULT_VISIBILITY:I = -0x3e8

.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist EDIT_CONVERSATION:Ljava/lang/String; = "conversation"

.field public static final whitelist EDIT_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final whitelist EDIT_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final whitelist EDIT_LOCKED_DEVICE:Ljava/lang/String; = "locked"

.field public static final whitelist EDIT_SOUND:Ljava/lang/String; = "sound"

.field public static final whitelist EDIT_VIBRATION:Ljava/lang/String; = "vibration"

.field public static final whitelist EDIT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o LOCKABLE_FIELDS:[I

.field private static final greylist-max-o MAX_TEXT_LENGTH:I = 0x3e8

.field public static final blacklist PLACEHOLDER_CONVERSATION_ID:Ljava/lang/String; = ":placeholder_id"

.field private static final greylist-max-o TAG_CHANNEL:Ljava/lang/String; = "channel"

.field public static final blacklist USER_LOCKED_ALLOW_BUBBLE:I = 0x100

.field public static final greylist-max-o USER_LOCKED_IMPORTANCE:I = 0x4

.field public static final greylist-max-o USER_LOCKED_LIGHTS:I = 0x8

.field public static final greylist-max-o USER_LOCKED_PRIORITY:I = 0x1

.field public static final greylist-max-o USER_LOCKED_SHOW_BADGE:I = 0x80

.field public static final whitelist USER_LOCKED_SOUND:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USER_LOCKED_VIBRATION:I = 0x10

.field public static final greylist-max-o USER_LOCKED_VISIBILITY:I = 0x2


# instance fields
.field private blacklist mAllowBubbles:I

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mBlockableSystem:Z

.field private greylist-max-o mBypassDnd:Z

.field private blacklist mConversationId:Ljava/lang/String;

.field private greylist-max-o mDeleted:Z

.field private blacklist mDeletedTime:J

.field private blacklist mDemoted:Z

.field private greylist-max-o mDesc:Ljava/lang/String;

.field private greylist-max-o mFgServiceShown:Z

.field private greylist-max-o mGroup:Ljava/lang/String;

.field private greylist mId:Ljava/lang/String;

.field private greylist-max-o mImportance:I

.field private blacklist mImportanceLockedDefaultApp:Z

.field private blacklist mImportantConvo:Z

.field private greylist-max-o mLightColor:I

.field private greylist-max-o mLights:Z

.field private greylist-max-o mLockscreenVisibility:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

.field private blacklist mOplusNotificationChannelExt:Landroid/app/INotificationChannelExt;

.field private blacklist mOriginalImportance:I

.field private blacklist mParentId:Ljava/lang/String;

.field private greylist-max-o mShowBadge:Z

.field private greylist-max-o mSound:Landroid/net/Uri;

.field private greylist-max-o mUserLockedFields:I

.field private greylist-max-o mVibration:[J

.field private greylist-max-o mVibrationEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOplusNotificationChannelExt(Landroid/app/NotificationChannel;)Landroid/app/INotificationChannelExt;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationChannel;->mOplusNotificationChannelExt:Landroid/app/INotificationChannelExt;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 207
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/app/INotificationChannelExt;->getLockableFields([I)[I

    move-result-object v0

    sput-object v0, Landroid/app/NotificationChannel;->LOCKABLE_FIELDS:[I

    .line 1249
    new-instance v0, Landroid/app/NotificationChannel$1;

    invoke-direct {v0}, Landroid/app/NotificationChannel$1;-><init>()V

    sput-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
        0x100
    .end array-data
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 247
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 249
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 250
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 260
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 262
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 264
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 265
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 269
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 270
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 271
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 1411
    const-class v3, Landroid/app/INotificationChannelExt;

    invoke-static {v3}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/INotificationChannelExt;

    iput-object v3, p0, Landroid/app/NotificationChannel;->mOplusNotificationChannelExt:Landroid/app/INotificationChannelExt;

    .line 1412
    new-instance v3, Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-direct {v3, p0, v2}, Landroid/app/NotificationChannel$NotificationChannelWrapper;-><init>(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel$NotificationChannelWrapper-IA;)V

    iput-object v3, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_0
    iput-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 308
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    goto :goto_1

    .line 311
    :cond_1
    iput-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 313
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    goto :goto_2

    .line 316
    :cond_2
    iput-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 318
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    goto :goto_4

    .line 324
    :cond_4
    iput-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 326
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    move v3, v0

    :goto_5
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v0

    :goto_6
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    move v3, v0

    :goto_7
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    move v3, v0

    :goto_8
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    :cond_9
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    goto :goto_9

    .line 336
    :cond_a
    iput-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 338
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    :cond_b
    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 353
    iget-object v0, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v0}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationChannelExt;->init(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 355
    iget-object v0, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v0}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/INotificationChannelExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 357
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 247
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 249
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 250
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 260
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 262
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 264
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 265
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 269
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 270
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 271
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 1411
    const-class v0, Landroid/app/INotificationChannelExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationChannelExt;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mOplusNotificationChannelExt:Landroid/app/INotificationChannelExt;

    .line 1412
    new-instance v0, Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-direct {v0, p0, v1}, Landroid/app/NotificationChannel$NotificationChannelWrapper;-><init>(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel$NotificationChannelWrapper-IA;)V

    iput-object v0, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    .line 291
    invoke-virtual {v0}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationChannelExt;->init(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 294
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 295
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 296
    iput p3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 297
    return-void
.end method

.method private blacklist getFieldsString()Ljava/lang/String;
    .locals 3

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hasDescription "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBypassDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLockscreenVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLightColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 1349
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserLockedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 1350
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFgServiceShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGroup=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlockableSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowBubbles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportanceLockedDefaultApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginalImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDemoted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportantConvo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    .line 1368
    invoke-virtual {v1}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    return-object v0
.end method

.method private greylist-max-o getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1043
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    .line 1044
    .local v0, "sound":Landroid/net/Uri;
    if-eqz v0, :cond_2

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1048
    .local v1, "canonicalSound":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1050
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    .line 1052
    :cond_1
    return-object v1

    .line 1045
    .end local v1    # "canonicalSound":Landroid/net/Uri;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 505
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    return-object p1
.end method

.method private static greylist-max-o longArrayToString([J)Ljava/lang/String;
    .locals 4
    .param p0, "values"    # [J

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 1241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1242
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    .end local v1    # "i":I
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1246
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist populateFromXml(Landroid/util/TypedXmlPullParser;ZLandroid/content/Context;)V
    .locals 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 969
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "forRestore is true but got null context"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 973
    const/4 v2, 0x0

    const-string v3, "desc"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 974
    nop

    .line 975
    const-string/jumbo v3, "priority"

    invoke-static {p1, v3, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 974
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 976
    const-string/jumbo v0, "visibility"

    const/16 v3, -0x3e8

    invoke-static {p1, v0, v3}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 978
    const-string/jumbo v0, "sound"

    invoke-static {p1, v0}, Landroid/app/NotificationChannel;->safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 979
    .local v0, "sound":Landroid/net/Uri;
    if-eqz p2, :cond_3

    invoke-direct {p0, p3, v0}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    invoke-static {p1}, Landroid/app/NotificationChannel;->safeAudioAttributes(Landroid/util/TypedXmlPullParser;)Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 981
    const-string v4, "lights"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 982
    const-string v4, "light_color"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 983
    const-string/jumbo v4, "vibration"

    invoke-static {p1, v4, v2}, Landroid/app/NotificationChannel;->safeLongArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[J)[J

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 984
    const-string/jumbo v4, "vibration_enabled"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 985
    const-string/jumbo v4, "show_badge"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 986
    const-string v4, "deleted"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 987
    const-wide/16 v4, -0x1

    const-string v6, "del_time"

    invoke-static {p1, v6, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 989
    const-string v4, "group"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 990
    const-string v4, "locked"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 991
    const-string v4, "fgservice"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 992
    const-string v4, "blockable_system"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 993
    const/4 v4, -0x1

    const-string v5, "allow_bubbles"

    invoke-static {p1, v5, v4}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 994
    const-string/jumbo v4, "orig_imp"

    invoke-static {p1, v4, v3}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 995
    const-string/jumbo v3, "parent"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 996
    const-string v4, "conv_id"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-virtual {p0, v3, v2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v2, "dem"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    .line 998
    const-string v2, "imp_conv"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 1002
    iget-object v1, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v1}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/INotificationChannelExt;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1004
    return-void
.end method

.method private greylist-max-o restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1008
    if-eqz p2, :cond_2

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1019
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1020
    .local v1, "canonicalizedUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1022
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    .line 1024
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 1009
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "canonicalizedUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist safeAudioAttributes(Landroid/util/TypedXmlPullParser;)Landroid/media/AudioAttributes;
    .locals 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 1199
    const-string/jumbo v0, "usage"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1200
    .local v0, "usage":I
    const-string v1, "content_type"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1202
    .local v1, "contentType":I
    const-string v2, "flags"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 1203
    .local v2, "flags":I
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1204
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1205
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1206
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1207
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 1203
    return-object v3
.end method

.method private static blacklist safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 1220
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 1216
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLongArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[J)[J
    .locals 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # [J

    .line 1224
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "attributeValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 1226
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [J

    .line 1228
    .local v2, "longValues":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1230
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    goto :goto_1

    .line 1231
    :catch_0
    move-exception v4

    .line 1232
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v5, 0x0

    aput-wide v5, v2, v3

    .line 1228
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1235
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method private static blacklist safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1211
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist writeXml(Landroid/util/TypedXmlSerializer;ZLandroid/content/Context;)V
    .locals 8
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1060
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "forBackup is true but got null context"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1062
    const/4 v0, 0x0

    const-string v1, "channel"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1065
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1068
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_4

    .line 1071
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const-string v4, "importance"

    invoke-interface {p1, v0, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1074
    const/4 v2, 0x2

    const-string/jumbo v4, "priority"

    invoke-interface {p1, v0, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 1077
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const-string/jumbo v4, "visibility"

    invoke-interface {p1, v0, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p3}, Landroid/app/NotificationChannel;->getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    .line 1080
    .local v2, "sound":Landroid/net/Uri;
    :goto_2
    if-eqz v2, :cond_8

    .line 1081
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sound"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1083
    :cond_8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1084
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const-string/jumbo v5, "usage"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1085
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    const-string v5, "content_type"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    const-string v5, "flags"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    :cond_9
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1089
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    const-string v5, "lights"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    :cond_a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-eqz v4, :cond_b

    .line 1092
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    const-string v5, "light_color"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    :cond_b
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1095
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    const-string/jumbo v5, "vibration_enabled"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    :cond_c
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1098
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vibration"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-eqz v4, :cond_e

    .line 1101
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    const-string v5, "locked"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    :cond_e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1104
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v4

    const-string v5, "fgservice"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1107
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    const-string/jumbo v5, "show_badge"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    :cond_10
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1110
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    const-string v5, "deleted"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    :cond_11
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_12

    .line 1113
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    const-string v6, "del_time"

    invoke-interface {p1, v0, v6, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    :cond_12
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1116
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    const-string v5, "group"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    :cond_13
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1119
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    const-string v5, "blockable_system"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    :cond_14
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 1122
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v4

    const-string v5, "allow_bubbles"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    :cond_15
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    if-eq v4, v3, :cond_16

    .line 1125
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v3

    const-string/jumbo v4, "orig_imp"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    :cond_16
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1128
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "parent"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    :cond_17
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1131
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "conv_id"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    :cond_18
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1134
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    const-string v4, "dem"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1136
    :cond_19
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1137
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    const-string v4, "imp_conv"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    :cond_1a
    iget-object v3, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v3}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/INotificationChannelExt;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1147
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    return-void
.end method


# virtual methods
.method public whitelist canBubble()Z
    .locals 2

    .line 819
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist canBypassDnd()Z
    .locals 1

    .line 718
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "redacted"    # Z

    .line 1323
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz p3, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1324
    .local v0, "redactedName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationChannel{mId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1327
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1329
    .local v1, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1374
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1376
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1377
    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1378
    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1379
    iget v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1380
    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1381
    iget v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1382
    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1383
    const-wide v3, 0x10900000007L

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1385
    :cond_0
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1386
    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1387
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    if-eqz v2, :cond_1

    .line 1388
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    .line 1389
    .local v5, "v":J
    const-wide v7, 0x2030000000aL

    invoke-virtual {p1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1388
    .end local v5    # "v":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1392
    :cond_1
    const-wide v2, 0x1050000000bL

    iget v4, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1393
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1394
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1395
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1396
    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1397
    const-wide v2, 0x1090000000fL

    iget-object v4, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1398
    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_2

    .line 1399
    const-wide v3, 0x10b00000010L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1401
    :cond_2
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1402
    const-wide v2, 0x10800000013L

    iget v4, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1404
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1405
    return-void
.end method

.method public whitelist enableLights(Z)V
    .locals 0
    .param p1, "lights"    # Z

    .line 574
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 575
    return-void
.end method

.method public whitelist enableVibration(Z)V
    .locals 0
    .param p1, "vibration"    # Z

    .line 596
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 597
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1269
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1270
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1271
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1272
    .local v2, "that":Landroid/app/NotificationChannel;
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mBypassDnd:Z

    if-ne v3, v4, :cond_2

    .line 1274
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mLights:Z

    if-ne v3, v4, :cond_2

    .line 1276
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1277
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1278
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mShowBadge:Z

    if-ne v3, v4, :cond_2

    .line 1281
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1282
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1283
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    iget v4, v2, Landroid/app/NotificationChannel;->mAllowBubbles:I

    if-ne v3, v4, :cond_2

    .line 1285
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1286
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 1287
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1288
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibration:[J

    iget-object v4, v2, Landroid/app/NotificationChannel;->mVibration:[J

    .line 1289
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1290
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1291
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    iget v4, v2, Landroid/app/NotificationChannel;->mOriginalImportance:I

    if-ne v3, v4, :cond_2

    .line 1294
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1295
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1296
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1297
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    .line 1300
    invoke-virtual {v3}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v3

    iget-object v4, v2, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v4}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/INotificationChannelExt;->equals(Landroid/app/INotificationChannelExt;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1272
    :goto_0
    return v0

    .line 1270
    .end local v2    # "that":Landroid/app/NotificationChannel;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAllowBubbles()I
    .locals 1

    .line 826
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 752
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getConversationId()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeletedTimeMs()J
    .locals 2

    .line 857
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    return-wide v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 684
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportance()I
    .locals 1

    .line 710
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    return v0
.end method

.method public whitelist getLightColor()I
    .locals 1

    .line 767
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return v0
.end method

.method public whitelist getLockscreenVisibility()I
    .locals 1

    .line 790
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 691
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOriginalImportance()I
    .locals 1

    .line 904
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    return v0
.end method

.method public whitelist getParentChannelId()Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSound()Landroid/net/Uri;
    .locals 1

    .line 745
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserLockedFields()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 865
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return v0
.end method

.method public whitelist getVibrationPattern()[J
    .locals 1

    .line 782
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibration:[J

    return-object v0
.end method

.method public blacklist getWrapper()Landroid/app/INotificationChannelWrapper;
    .locals 1

    .line 1417
    iget-object v0, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    return-object v0
.end method

.method public whitelist hasUserSetImportance()Z
    .locals 1

    .line 938
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasUserSetSound()Z
    .locals 1

    .line 946
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1306
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1307
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1308
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1309
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1310
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 1311
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 1312
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 1306
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 1315
    .local v0, "result":I
    iget-object v1, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v1}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/INotificationChannelExt;->hashCode(I)I

    move-result v0

    .line 1317
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1318
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist isBlockable()Z
    .locals 1

    .line 880
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .locals 1

    .line 725
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isDeleted()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 850
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return v0
.end method

.method public whitelist isDemoted()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    return v0
.end method

.method public greylist-max-o isFgServiceShown()Z
    .locals 1

    .line 872
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    return v0
.end method

.method public blacklist isImportanceLockedByCriticalDeviceFunction()Z
    .locals 1

    .line 896
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return v0
.end method

.method public whitelist isImportantConversation()Z
    .locals 1

    .line 738
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    return v0
.end method

.method public greylist-max-o lockFields(I)V
    .locals 1
    .param p1, "field"    # I

    .line 428
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 429
    return-void
.end method

.method public whitelist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 961
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NotificationChannel;->populateFromXml(Landroid/util/TypedXmlPullParser;ZLandroid/content/Context;)V

    .line 962
    return-void
.end method

.method public greylist-max-o populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;

    .line 953
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/NotificationChannel;->populateFromXml(Landroid/util/TypedXmlPullParser;ZLandroid/content/Context;)V

    .line 954
    return-void
.end method

.method public blacklist setAllowBubbles(I)V
    .locals 0
    .param p1, "allowed"    # I

    .line 660
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 661
    return-void
.end method

.method public whitelist setAllowBubbles(Z)V
    .locals 0
    .param p1, "allowBubbles"    # Z

    .line 653
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 654
    return-void
.end method

.method public whitelist setBlockable(Z)V
    .locals 0
    .param p1, "blockable"    # Z

    .line 480
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 481
    return-void
.end method

.method public whitelist setBypassDnd(Z)V
    .locals 0
    .param p1, "bypassDnd"    # Z

    .line 634
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 635
    return-void
.end method

.method public whitelist setConversationId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentChannelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 676
    iput-object p1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 677
    iput-object p2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public greylist-max-o setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .line 451
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 452
    return-void
.end method

.method public blacklist setDeletedTimeMs(J)V
    .locals 0
    .param p1, "time"    # J

    .line 459
    iput-wide p1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 460
    return-void
.end method

.method public blacklist setDemoted(Z)V
    .locals 0
    .param p1, "demoted"    # Z

    .line 920
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 921
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 501
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public greylist-max-o setFgServiceShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 443
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    .line 444
    return-void
.end method

.method public whitelist setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .line 533
    iput-object p1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 515
    iput-object p1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public whitelist setImportance(I)V
    .locals 0
    .param p1, "importance"    # I

    .line 622
    iput p1, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 623
    return-void
.end method

.method public blacklist setImportanceLockedByCriticalDeviceFunction(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .line 888
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 889
    return-void
.end method

.method public blacklist setImportantConversation(Z)V
    .locals 0
    .param p1, "importantConvo"    # Z

    .line 467
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 468
    return-void
.end method

.method public whitelist setLightColor(I)V
    .locals 0
    .param p1, "argb"    # I

    .line 585
    iput p1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 586
    return-void
.end method

.method public whitelist setLockscreenVisibility(I)V
    .locals 0
    .param p1, "lockscreenVisibility"    # I

    .line 644
    iput p1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 645
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 491
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public blacklist setOriginalImportance(I)V
    .locals 0
    .param p1, "importance"    # I

    .line 912
    iput p1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 913
    return-void
.end method

.method public whitelist setShowBadge(Z)V
    .locals 1
    .param p1, "showBadge"    # Z

    .line 546
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 549
    iget-object v0, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v0}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/INotificationChannelExt;->setTempShowBadge(Z)V

    .line 551
    return-void
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 562
    iput-object p1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 563
    iput-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 564
    return-void
.end method

.method public whitelist setVibrationPattern([J)V
    .locals 1
    .param p1, "vibrationPattern"    # [J

    .line 608
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 609
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 610
    return-void
.end method

.method public whitelist shouldShowLights()Z
    .locals 1

    .line 759
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    return v0
.end method

.method public whitelist shouldVibrate()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return v0
.end method

.method public whitelist toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1156
    .local v0, "record":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1157
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1158
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1159
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_0

    .line 1160
    nop

    .line 1161
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1160
    const-string v3, "importance"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1163
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    const/4 v1, 0x2

    const-string/jumbo v3, "priority"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1166
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 1167
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1169
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1170
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1172
    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1173
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1174
    nop

    .line 1175
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1174
    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1176
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1178
    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lights"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1179
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "light_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1180
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1181
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1182
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fgservice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1183
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_badge"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1185
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1186
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "del_time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1187
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v1

    const-string v2, "blockable_system"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1189
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v1

    const-string v2, "allow_bubbles"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1193
    iget-object v1, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v1}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/INotificationChannelExt;->toJson(Lorg/json/JSONObject;)V

    .line 1195
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannel{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1337
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1334
    return-object v0
.end method

.method public greylist-max-o unlockFields(I)V
    .locals 2
    .param p1, "field"    # I

    .line 435
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 436
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 361
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 363
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 367
    :goto_0
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 369
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 373
    :goto_1
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 375
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 377
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 379
    :goto_2
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 381
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 386
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 388
    :goto_3
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 389
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 390
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 392
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 393
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 394
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 395
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 397
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 399
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 401
    :goto_4
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_5

    .line 402
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 405
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    :goto_5
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 414
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 415
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 416
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    iget-object v0, p0, Landroid/app/NotificationChannel;->mNcnWrapper:Landroid/app/NotificationChannel$NotificationChannelWrapper;

    invoke-virtual {v0}, Landroid/app/NotificationChannel$NotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationChannelExt;->writeToParcel(Landroid/os/Parcel;I)V

    .line 421
    return-void
.end method

.method public whitelist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1032
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NotificationChannel;->writeXml(Landroid/util/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1033
    return-void
.end method

.method public greylist-max-o writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/NotificationChannel;->writeXml(Landroid/util/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1040
    return-void
.end method
