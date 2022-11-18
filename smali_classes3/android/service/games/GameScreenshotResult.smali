.class public final Landroid/service/games/GameScreenshotResult;
.super Ljava/lang/Object;
.source "GameScreenshotResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameScreenshotResult$GameScreenshotStatus;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameScreenshotResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist GAME_SCREENSHOT_ERROR_INTERNAL_ERROR:I = 0x1

.field public static final blacklist GAME_SCREENSHOT_SUCCESS:I


# instance fields
.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/service/games/GameScreenshotResult$1;

    invoke-direct {v0}, Landroid/service/games/GameScreenshotResult$1;-><init>()V

    sput-object v0, Landroid/service/games/GameScreenshotResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0
    .param p1, "status"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/service/games/GameScreenshotResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/games/GameScreenshotResult;-><init>(I)V

    return-void
.end method

.method public static blacklist createInternalErrorResult()Landroid/service/games/GameScreenshotResult;
    .locals 2

    .line 103
    new-instance v0, Landroid/service/games/GameScreenshotResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/service/games/GameScreenshotResult;-><init>(I)V

    return-object v0
.end method

.method public static blacklist createSuccessResult()Landroid/service/games/GameScreenshotResult;
    .locals 2

    .line 95
    new-instance v0, Landroid/service/games/GameScreenshotResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/games/GameScreenshotResult;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 136
    return v0

    .line 139
    :cond_0
    instance-of v1, p1, Landroid/service/games/GameScreenshotResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 140
    return v2

    .line 143
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/service/games/GameScreenshotResult;

    .line 144
    .local v1, "that":Landroid/service/games/GameScreenshotResult;
    iget v3, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    iget v4, v1, Landroid/service/games/GameScreenshotResult;->mStatus:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getStatus()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameScreenshotResult{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return-void
.end method
