.class public final synthetic Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;

    invoke-direct {v0, p1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method
