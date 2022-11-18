.class public Landroid/media/PlayerBase$PlayerIdCard;
.super Ljava/lang/Object;
.source "PlayerBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerIdCard"
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_ATTRIBUTES_DEFINED:I = 0x1

.field public static final greylist-max-o AUDIO_ATTRIBUTES_NONE:I

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlayerBase$PlayerIdCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field public final greylist-max-o mIPlayer:Landroid/media/IPlayer;

.field public final greylist-max-o mPlayerType:I

.field public final blacklist mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 474
    new-instance v0, Landroid/media/PlayerBase$PlayerIdCard$1;

    invoke-direct {v0}, Landroid/media/PlayerBase$PlayerIdCard$1;-><init>()V

    sput-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .param p3, "iplayer"    # Landroid/media/IPlayer;
    .param p4, "sessionId"    # I

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    .line 451
    iput-object p2, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    .line 452
    iput-object p3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    .line 453
    iput p4, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    .line 454
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    .line 491
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 494
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    .line 496
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/PlayerBase$PlayerIdCard-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 500
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 501
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/media/PlayerBase$PlayerIdCard;

    if-nez v2, :cond_1

    goto :goto_1

    .line 503
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/PlayerBase$PlayerIdCard;

    .line 506
    .local v2, "that":Landroid/media/PlayerBase$PlayerIdCard;
    iget v3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iget v4, v2, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    iget v4, v2, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 501
    .end local v2    # "that":Landroid/media/PlayerBase$PlayerIdCard;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 468
    iget v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 470
    iget-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 471
    iget v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    return-void
.end method
