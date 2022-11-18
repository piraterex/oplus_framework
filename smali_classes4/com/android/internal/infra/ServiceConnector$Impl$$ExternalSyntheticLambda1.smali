.class public final synthetic Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/infra/ServiceConnector$Impl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbindJobThread()V

    return-void
.end method
