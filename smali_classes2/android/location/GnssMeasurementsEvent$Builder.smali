.class public final Landroid/location/GnssMeasurementsEvent$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClock:Landroid/location/GnssClock;

.field private blacklist mGnssAgcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Landroid/location/GnssClock;

    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 211
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getClock()Landroid/location/GnssClock;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    .line 219
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 220
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getGnssAutomaticGainControls()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 221
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssMeasurementsEvent;
    .locals 5

    .line 282
    new-instance v0, Landroid/location/GnssMeasurementsEvent;

    iget-object v1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssMeasurementsEvent;-><init>(Landroid/location/GnssClock;Ljava/util/List;Ljava/util/List;Landroid/location/GnssMeasurementsEvent-IA;)V

    return-object v0
.end method

.method public whitelist setClock(Landroid/location/GnssClock;)Landroid/location/GnssMeasurementsEvent$Builder;
    .locals 0
    .param p1, "clock"    # Landroid/location/GnssClock;

    .line 228
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    .line 230
    return-object p0
.end method

.method public whitelist setGnssAutomaticGainControls(Ljava/util/Collection;)Landroid/location/GnssMeasurementsEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;)",
            "Landroid/location/GnssMeasurementsEvent$Builder;"
        }
    .end annotation

    .line 275
    .local p1, "agcs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GnssAutomaticGainControl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 276
    return-object p0
.end method

.method public varargs blacklist setGnssAutomaticGainControls([Landroid/location/GnssAutomaticGainControl;)Landroid/location/GnssMeasurementsEvent$Builder;
    .locals 1
    .param p1, "agcs"    # [Landroid/location/GnssAutomaticGainControl;

    .line 265
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 266
    return-object p0
.end method

.method public whitelist setMeasurements(Ljava/util/Collection;)Landroid/location/GnssMeasurementsEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssMeasurement;",
            ">;)",
            "Landroid/location/GnssMeasurementsEvent$Builder;"
        }
    .end annotation

    .line 252
    .local p1, "measurements":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GnssMeasurement;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 253
    return-object p0
.end method

.method public varargs blacklist setMeasurements([Landroid/location/GnssMeasurement;)Landroid/location/GnssMeasurementsEvent$Builder;
    .locals 1
    .param p1, "measurements"    # [Landroid/location/GnssMeasurement;

    .line 242
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 244
    return-object p0
.end method
