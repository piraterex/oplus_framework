.class public final synthetic Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/display/VirtualDisplay$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/display/VirtualDisplay$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/display/VirtualDisplay$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    return-void
.end method
