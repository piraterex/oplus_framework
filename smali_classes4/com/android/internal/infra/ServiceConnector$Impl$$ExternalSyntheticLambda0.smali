.class public final synthetic Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/IInterface;

    invoke-static {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method
