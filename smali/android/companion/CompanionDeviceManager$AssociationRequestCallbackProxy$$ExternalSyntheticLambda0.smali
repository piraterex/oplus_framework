.class public final synthetic Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/CompanionDeviceManager$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/CompanionDeviceManager$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceManager$Callback;

    check-cast p1, Landroid/content/IntentSender;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onAssociationPending(Landroid/content/IntentSender;)V

    return-void
.end method
