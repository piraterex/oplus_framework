.class public final Landroid/app/PictureInPictureUiState;
.super Ljava/lang/Object;
.source "PictureInPictureUiState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureUiState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsStashed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/app/PictureInPictureUiState$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureUiState$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 0
    .param p1, "isStashed"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    instance-of v0, p1, Landroid/app/PictureInPictureUiState;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/PictureInPictureUiState;

    .line 69
    .local v0, "that":Landroid/app/PictureInPictureUiState;
    iget-boolean v1, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, v0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isStashed()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 85
    return-void
.end method
