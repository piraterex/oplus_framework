.class public final Landroid/net/vcn/VcnConfig$Builder;
.super Ljava/lang/Object;
.source "VcnConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mGatewayConnectionConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsTestModeProfile:Z

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    .line 195
    const-string v0, "context was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mPackageName:Ljava/lang/String;

    .line 198
    return-void
.end method


# virtual methods
.method public whitelist addGatewayConnectionConfig(Landroid/net/vcn/VcnGatewayConnectionConfig;)Landroid/net/vcn/VcnConfig$Builder;
    .locals 4
    .param p1, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 212
    const-string v0, "gatewayConnectionConfig was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 216
    .local v1, "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    nop

    .line 217
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    .end local v1    # "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    goto :goto_0

    .line 219
    .restart local v1    # "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "GatewayConnection for specified name already exists"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    .end local v1    # "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_1
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    return-object p0
.end method

.method public whitelist build()Landroid/net/vcn/VcnConfig;
    .locals 5

    .line 251
    new-instance v0, Landroid/net/vcn/VcnConfig;

    iget-object v1, p0, Landroid/net/vcn/VcnConfig$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-boolean v3, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/vcn/VcnConfig;-><init>(Ljava/lang/String;Ljava/util/Set;ZLandroid/net/vcn/VcnConfig-IA;)V

    return-object v0
.end method

.method public blacklist setIsTestModeProfile()Landroid/net/vcn/VcnConfig$Builder;
    .locals 1

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    .line 241
    return-object p0
.end method
