.class public final Landroid/app/time/TimeCapabilities;
.super Ljava/lang/Object;
.source "TimeCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigureAutoTimeDetectionEnabledCapability:I

.field private final blacklist mSuggestTimeManuallyCapability:I

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoTimeDetectionEnabledCapability(Landroid/app/time/TimeCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/app/time/TimeCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeCapabilities$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/time/TimeCapabilities$Builder;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    .line 62
    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    .line 64
    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeCapabilities$Builder;Landroid/app/time/TimeCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeCapabilities;-><init>(Landroid/app/time/TimeCapabilities$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    .line 71
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/app/time/TimeCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoTimeDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;->setSuggestTimeManuallyCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    .line 71
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeCapabilities;

    .line 112
    .local v2, "that":Landroid/app/time/TimeCapabilities;
    iget v3, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    iget v4, v2, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    .line 115
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 110
    .end local v2    # "that":Landroid/app/time/TimeCapabilities;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getConfigureAutoTimeDetectionEnabledCapability()I
    .locals 1

    .line 90
    iget v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    return v0
.end method

.method public blacklist getSuggestTimeManuallyCapability()I
    .locals 1

    .line 99
    iget v0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 120
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCapabilities{mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureAutoTimeDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestTimeManuallyCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 80
    iget v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoTimeDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/app/time/TimeCapabilities;->mSuggestTimeManuallyCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
