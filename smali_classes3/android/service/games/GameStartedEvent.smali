.class public final Landroid/service/games/GameStartedEvent;
.super Ljava/lang/Object;
.source "GameStartedEvent.java"

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
            "Landroid/service/games/GameStartedEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/service/games/GameStartedEvent$1;

    invoke-direct {v0}, Landroid/service/games/GameStartedEvent$1;-><init>()V

    sput-object v0, Landroid/service/games/GameStartedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    .line 60
    iput-object p2, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 103
    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Landroid/service/games/GameStartedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 107
    return v2

    .line 110
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/service/games/GameStartedEvent;

    .line 111
    .local v1, "that":Landroid/service/games/GameStartedEvent;
    iget v3, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    iget v4, v1, Landroid/service/games/GameStartedEvent;->mTaskId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    .line 112
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 111
    :goto_0
    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTaskId()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameStartedEvent{mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

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

    .line 70
    iget v0, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
