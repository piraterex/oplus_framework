.class public final synthetic Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/HardwareRendererObserver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/HardwareRendererObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/HardwareRendererObserver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0}, Landroid/graphics/HardwareRendererObserver;->lambda$notifyDataAvailable$0$android-graphics-HardwareRendererObserver()V

    return-void
.end method
