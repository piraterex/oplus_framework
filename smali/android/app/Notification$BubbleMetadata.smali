.class public final Landroid/app/Notification$BubbleMetadata;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$BubbleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field public static final blacklist FLAG_SUPPRESSABLE_BUBBLE:I = 0x4

.field public static final blacklist FLAG_SUPPRESS_BUBBLE:I = 0x8

.field public static final blacklist FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field private blacklist mDeleteIntent:Landroid/app/PendingIntent;

.field private blacklist mDesiredHeight:I

.field private blacklist mDesiredHeightResId:I

.field private blacklist mFlags:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShortcutId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10523
    new-instance v0, Landroid/app/Notification$BubbleMetadata$1;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$1;-><init>()V

    sput-object v0, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V
    .locals 0
    .param p1, "expandIntent"    # Landroid/app/PendingIntent;
    .param p2, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "height"    # I
    .param p5, "heightResId"    # I
    .param p6, "shortcutId"    # Ljava/lang/String;

    .line 10316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10317
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10318
    iput-object p3, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10319
    iput p4, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 10320
    iput p5, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 10321
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10322
    iput-object p6, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    .line 10323
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification$BubbleMetadata-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 10325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10327
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10329
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10330
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10332
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 10333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 10335
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10337
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 10338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    .line 10341
    :cond_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Notification$BubbleMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 10539
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoExpandBubble()Z
    .locals 2

    .line 10427
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist getBubbleIcon()Landroid/graphics/drawable/Icon;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10398
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public greylist getBubbleIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10370
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 10378
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDesiredHeight()I
    .locals 1

    .line 10408
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    return v0
.end method

.method public whitelist getDesiredHeightResId()I
    .locals 1

    .line 10418
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 10520
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 10388
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 10360
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .locals 1

    .line 10350
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isBubbleSuppressable()Z
    .locals 1

    .line 10467
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isBubbleSuppressed()Z
    .locals 1

    .line 10476
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isNotificationSuppressed()Z
    .locals 1

    .line 10450
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 10513
    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10514
    return-void
.end method

.method public blacklist setSuppressBubble(Z)V
    .locals 1
    .param p1, "suppressed"    # Z

    .line 10502
    if-eqz p1, :cond_0

    .line 10503
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_0

    .line 10505
    :cond_0
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10507
    :goto_0
    return-void
.end method

.method public blacklist setSuppressNotification(Z)V
    .locals 1
    .param p1, "suppressed"    # Z

    .line 10487
    if-eqz p1, :cond_0

    .line 10488
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_0

    .line 10490
    :cond_0
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10492
    :goto_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 10544
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10545
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 10546
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10548
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10549
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_3

    .line 10550
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10552
    :cond_3
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10553
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10554
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10555
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 10556
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10558
    :cond_5
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10559
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10560
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10561
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 10563
    :cond_6
    return-void
.end method
