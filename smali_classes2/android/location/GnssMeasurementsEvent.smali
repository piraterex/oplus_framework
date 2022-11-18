.class public final Landroid/location/GnssMeasurementsEvent;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementsEvent$Builder;,
        Landroid/location/GnssMeasurementsEvent$Callback;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurementsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mClock:Landroid/location/GnssClock;

.field private final blacklist mGnssAgcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Landroid/location/GnssMeasurementsEvent$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementsEvent$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurementsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GnssClock;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "clock"    # Landroid/location/GnssClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GnssClock;",
            "Ljava/util/List<",
            "Landroid/location/GnssMeasurement;",
            ">;",
            "Ljava/util/List<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p2, "measurements":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssMeasurement;>;"
    .local p3, "agcs":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAutomaticGainControl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Landroid/location/GnssMeasurementsEvent;->mMeasurements:Ljava/util/List;

    .line 129
    iput-object p3, p0, Landroid/location/GnssMeasurementsEvent;->mGnssAgcs:Ljava/util/List;

    .line 130
    iput-object p1, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    .line 131
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GnssClock;Ljava/util/List;Ljava/util/List;Landroid/location/GnssMeasurementsEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/location/GnssMeasurementsEvent;-><init>(Landroid/location/GnssClock;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClock()Landroid/location/GnssClock;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    return-object v0
.end method

.method public whitelist getGnssAutomaticGainControls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mGnssAgcs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMeasurements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mMeasurements:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssMeasurementsEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent;->mMeasurements:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mGnssAgcs:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mMeasurements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mGnssAgcs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 186
    return-void
.end method
