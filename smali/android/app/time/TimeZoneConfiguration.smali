.class public final Landroid/app/time/TimeZoneConfiguration;
.super Ljava/lang/Object;
.source "TimeZoneConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeZoneConfiguration$Builder;,
        Landroid/app/time/TimeZoneConfiguration$Setting;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SETTING_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "autoDetectionEnabled"

.field private static final blacklist SETTING_GEO_DETECTION_ENABLED:Ljava/lang/String; = "geoDetectionEnabled"


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/app/time/TimeZoneConfiguration;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneConfiguration;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeZoneConfiguration;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeZoneConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->-$$Nest$fgetmBundle(Landroid/app/time/TimeZoneConfiguration$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeZoneConfiguration$Builder;Landroid/app/time/TimeZoneConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeZoneConfiguration;-><init>(Landroid/app/time/TimeZoneConfiguration$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneConfiguration;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 84
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setPropertyBundleInternal(Landroid/os/Bundle;)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method private blacklist enforceSettingPresent(Ljava/lang/String;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    if-ne p0, p1, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/time/TimeZoneConfiguration;

    .line 167
    .local v0, "that":Landroid/app/time/TimeZoneConfiguration;
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v1

    return v1

    .line 164
    .end local v0    # "that":Landroid/app/time/TimeZoneConfiguration;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIsAutoDetectionEnabled()Z
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    const-string v1, "autoDetectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIsGeoDetectionEnabled()Z
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    const-string v1, "geoDetectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAutoDetectionEnabled()Z
    .locals 2

    .line 115
    const-string v0, "autoDetectionEnabled"

    invoke-direct {p0, v0}, Landroid/app/time/TimeZoneConfiguration;->enforceSettingPresent(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isComplete()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0
.end method

.method public whitelist isGeoDetectionEnabled()Z
    .locals 2

    .line 140
    const-string v0, "geoDetectionEnabled"

    invoke-direct {p0, v0}, Landroid/app/time/TimeZoneConfiguration;->enforceSettingPresent(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneConfiguration{mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

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

    .line 91
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method
