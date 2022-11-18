.class public final synthetic Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentTransition$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/FragmentTransition;->lambda$replaceHide$0(Ljava/util/ArrayList;)V

    return-void
.end method
