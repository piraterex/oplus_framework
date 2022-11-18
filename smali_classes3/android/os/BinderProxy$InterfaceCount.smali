.class public final Landroid/os/BinderProxy$InterfaceCount;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterfaceCount"
.end annotation


# instance fields
.field private final blacklist mCount:I

.field private final blacklist mInterfaceName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Landroid/os/BinderProxy$InterfaceCount;->mInterfaceName:Ljava/lang/String;

    .line 432
    iput p2, p0, Landroid/os/BinderProxy$InterfaceCount;->mCount:I

    .line 433
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/BinderProxy$InterfaceCount;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BinderProxy$InterfaceCount;->mCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
