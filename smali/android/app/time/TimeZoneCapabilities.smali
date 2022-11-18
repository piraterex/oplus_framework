.class public final Landroid/app/time/TimeZoneCapabilities;
.super Ljava/lang/Object;
.source "TimeZoneCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeZoneCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigureAutoDetectionEnabledCapability:I

.field private final blacklist mConfigureGeoDetectionEnabledCapability:I

.field private final blacklist mSuggestManualTimeZoneCapability:I

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeZoneCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/app/time/TimeZoneCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    .line 68
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    .line 70
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    .line 72
    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmSuggestManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities$Builder;Landroid/app/time/TimeZoneCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeZoneCapabilities;-><init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    .line 78
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSuggestManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 78
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 166
    return v0

    .line 168
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneCapabilities;

    .line 172
    .local v2, "that":Landroid/app/time/TimeZoneCapabilities;
    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 169
    .end local v2    # "that":Landroid/app/time/TimeZoneCapabilities;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getConfigureAutoDetectionEnabledCapability()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return v0
.end method

.method public whitelist getConfigureGeoDetectionEnabledCapability()I
    .locals 1

    .line 110
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return v0
.end method

.method public blacklist getSuggestManualTimeZoneCapability()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 182
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneDetectorCapabilities{mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureAutoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureGeoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestManualTimeZoneCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/app/time/TimeZoneConfiguration;
    .param p2, "requestedChanges"    # Landroid/app/time/TimeZoneConfiguration;

    .line 140
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>(Landroid/app/time/TimeZoneConfiguration;)V

    .line 141
    .local v0, "newConfigBuilder":Landroid/app/time/TimeZoneConfiguration$Builder;
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 143
    return-object v2

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 150
    return-object v2

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 155
    :cond_3
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 88
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
