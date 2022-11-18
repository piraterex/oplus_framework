.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/radio/TunerCallbackAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListChanged$12$android-hardware-radio-TunerCallbackAdapter()V

    return-void
.end method
