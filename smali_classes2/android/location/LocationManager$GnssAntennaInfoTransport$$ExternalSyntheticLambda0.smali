.class public final synthetic Landroid/location/LocationManager$GnssAntennaInfoTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/location/GnssAntennaInfo$Listener;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->lambda$onGnssAntennaInfoChanged$0(Ljava/util/List;Landroid/location/GnssAntennaInfo$Listener;)V

    return-void
.end method
