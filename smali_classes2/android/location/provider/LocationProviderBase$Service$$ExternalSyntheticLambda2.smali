.class public final synthetic Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;->f$0:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;->f$0:Ljava/lang/RuntimeException;

    invoke-static {v0}, Landroid/location/provider/LocationProviderBase$Service;->lambda$flush$1(Ljava/lang/RuntimeException;)V

    return-void
.end method
