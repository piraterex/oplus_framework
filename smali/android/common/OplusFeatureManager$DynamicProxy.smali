.class Landroid/common/OplusFeatureManager$DynamicProxy;
.super Ljava/lang/Object;
.source "OplusFeatureManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/common/OplusFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicProxy"
.end annotation


# instance fields
.field private blacklist feature:Ljava/lang/String;

.field private blacklist realObj:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "f"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/common/OplusFeatureManager$DynamicProxy;->realObj:Ljava/lang/Object;

    .line 90
    iput-object p2, p0, Landroid/common/OplusFeatureManager$DynamicProxy;->feature:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist test-api invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/common/OplusFeatureManager$DynamicProxy;->realObj:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "result":Ljava/lang/Object;
    return-object v0
.end method
