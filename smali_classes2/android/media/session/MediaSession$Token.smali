.class public final Landroid/media/session/MediaSession$Token;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBinder:Landroid/media/session/ISessionController;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 864
    new-instance v0, Landroid/media/session/MediaSession$Token$1;

    invoke-direct {v0}, Landroid/media/session/MediaSession$Token$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/session/ISessionController;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "binder"    # Landroid/media/session/ISessionController;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput p1, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 802
    iput-object p2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    .line 803
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    .line 808
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 831
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 832
    return v0

    .line 833
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 834
    return v1

    .line 835
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 836
    return v1

    .line 837
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 838
    .local v2, "other":Landroid/media/session/MediaSession$Token;
    iget v3, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    iget v4, v2, Landroid/media/session/MediaSession$Token;->mUid:I

    if-eq v3, v4, :cond_3

    .line 839
    return v1

    .line 841
    :cond_3
    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-eqz v3, :cond_5

    iget-object v4, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v4, :cond_4

    goto :goto_0

    .line 844
    :cond_4
    invoke-interface {v3}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 842
    :cond_5
    :goto_0
    iget-object v4, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0
.end method

.method public greylist-max-o getBinder()Landroid/media/session/ISessionController;
    .locals 1

    .line 861
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 853
    iget v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 823
    const/16 v0, 0x1f

    .line 824
    .local v0, "prime":I
    iget v1, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 825
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 826
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 817
    iget v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 819
    return-void
.end method
