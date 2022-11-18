.class public final synthetic Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void
.end method
