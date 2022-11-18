.class public final Landroid/app/time/TimeZoneCapabilitiesAndConfig;
.super Ljava/lang/Object;
.source "TimeZoneCapabilitiesAndConfig.java"

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
            "Landroid/app/time/TimeZoneCapabilitiesAndConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilities:Landroid/app/time/TimeZoneCapabilities;

.field private final blacklist mConfiguration:Landroid/app/time/TimeZoneConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V
    .locals 1
    .param p1, "capabilities"    # Landroid/app/time/TimeZoneCapabilities;
    .param p2, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneCapabilities;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneConfiguration;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    .line 60
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 64
    const-class v0, Landroid/app/time/TimeZoneCapabilities;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneCapabilities;

    .line 65
    .local v0, "capabilities":Landroid/app/time/TimeZoneCapabilities;
    const-class v2, Landroid/app/time/TimeZoneConfiguration;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/TimeZoneConfiguration;

    .line 66
    .local v1, "configuration":Landroid/app/time/TimeZoneConfiguration;
    new-instance v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    invoke-direct {v2, v0, v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    .line 105
    .local v2, "that":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    invoke-virtual {v3, v4}, Landroid/app/time/TimeZoneCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    .line 106
    invoke-virtual {v3, v4}, Landroid/app/time/TimeZoneConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 102
    .end local v2    # "that":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getCapabilities()Landroid/app/time/TimeZoneCapabilities;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    return-object v0
.end method

.method public whitelist getConfiguration()Landroid/app/time/TimeZoneConfiguration;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneCapabilitiesAndConfig{mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 71
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    return-void
.end method
