.class public final synthetic Landroid/app/timezone/RulesManager$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/timezone/RulesManager$CallbackWrapper;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/timezone/RulesManager$CallbackWrapper;

    iput p2, p0, Landroid/app/timezone/RulesManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget v1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Landroid/app/timezone/RulesManager$CallbackWrapper;->lambda$onFinished$0$android-app-timezone-RulesManager$CallbackWrapper(I)V

    return-void
.end method
