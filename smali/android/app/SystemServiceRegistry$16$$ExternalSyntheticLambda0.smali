.class public final synthetic Landroid/app/SystemServiceRegistry$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/app/SystemServiceRegistry$16;->lambda$createService$0()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
