.class public final synthetic Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/location/ContextHubManager$4;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/hardware/location/ContextHubMessage;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/location/ContextHubManager$4;IILandroid/hardware/location/ContextHubMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubManager$4;

    iput p2, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/location/ContextHubMessage;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/location/ContextHubManager$4;

    iget v1, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/location/ContextHubMessage;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/location/ContextHubManager$4;->lambda$onMessageReceipt$0$android-hardware-location-ContextHubManager$4(IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method
