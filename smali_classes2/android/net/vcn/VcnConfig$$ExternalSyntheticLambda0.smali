.class public final synthetic Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;
    .locals 0

    check-cast p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
