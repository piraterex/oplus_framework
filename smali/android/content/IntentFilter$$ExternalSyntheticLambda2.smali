.class public final synthetic Landroid/content/IntentFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->lambda$asPredicate$2$android-content-IntentFilter(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
