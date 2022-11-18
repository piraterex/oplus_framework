.class public final Landroid/app/time/TimeCapabilitiesAndConfig;
.super Ljava/lang/Object;
.source "TimeCapabilitiesAndConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeCapabilitiesAndConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTimeCapabilities:Landroid/app/time/TimeCapabilities;

.field private final blacklist mTimeConfiguration:Landroid/app/time/TimeConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeCapabilitiesAndConfig;->readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig$1;

    invoke-direct {v0}, Landroid/app/time/TimeCapabilitiesAndConfig$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeCapabilitiesAndConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V
    .locals 1
    .param p1, "timeCapabilities"    # Landroid/app/time/TimeCapabilities;
    .param p2, "timeConfiguration"    # Landroid/app/time/TimeConfiguration;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeCapabilities;

    iput-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeConfiguration;

    iput-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

    .line 58
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 62
    const-class v0, Landroid/app/time/TimeCapabilities;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeCapabilities;

    .line 63
    .local v0, "capabilities":Landroid/app/time/TimeCapabilities;
    const-class v2, Landroid/app/time/TimeConfiguration;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/TimeConfiguration;

    .line 64
    .local v1, "configuration":Landroid/app/time/TimeConfiguration;
    new-instance v2, Landroid/app/time/TimeCapabilitiesAndConfig;

    invoke-direct {v2, v0, v1}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

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

    .line 102
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 103
    .local v2, "that":Landroid/app/time/TimeCapabilitiesAndConfig;
    iget-object v3, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    iget-object v4, v2, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {v3, v4}, Landroid/app/time/TimeCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

    iget-object v4, v2, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

    .line 104
    invoke-virtual {v3, v4}, Landroid/app/time/TimeConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 103
    :goto_0
    return v0

    .line 101
    .end local v2    # "that":Landroid/app/time/TimeCapabilitiesAndConfig;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getTimeCapabilities()Landroid/app/time/TimeCapabilities;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    return-object v0
.end method

.method public blacklist getTimeConfiguration()Landroid/app/time/TimeConfiguration;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCapabilitiesAndConfig{mTimeCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

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

    .line 94
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mTimeConfiguration:Landroid/app/time/TimeConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    return-void
.end method
