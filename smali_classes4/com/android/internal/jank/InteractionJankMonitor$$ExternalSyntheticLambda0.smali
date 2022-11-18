.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    return-void
.end method


# virtual methods
.method public final whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-static {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->$r8$lambda$H_OZ99anWxwLySgdeSqJ03mcRzY(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
