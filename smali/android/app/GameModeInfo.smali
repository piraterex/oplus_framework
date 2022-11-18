.class public final Landroid/app/GameModeInfo;
.super Ljava/lang/Object;
.source "GameModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameModeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActiveGameMode:I

.field private final blacklist mAvailableGameModes:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/app/GameModeInfo$1;

    invoke-direct {v0}, Landroid/app/GameModeInfo$1;-><init>()V

    sput-object v0, Landroid/app/GameModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[I)V
    .locals 0
    .param p1, "activeGameMode"    # I
    .param p2, "availableGameModes"    # [I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    .line 46
    iput-object p2, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    .line 47
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "availableGameModesCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActiveGameMode()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    return v0
.end method

.method public whitelist getAvailableGameModes()[I
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 100
    return-void
.end method
