.class public final synthetic Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iput p2, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iget v1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->lambda$onVcnStatusChanged$1$android-net-vcn-VcnManager$VcnStatusCallbackBinder(I)V

    return-void
.end method
