.class public Landroid/os/ServiceSpecificException;
.super Ljava/lang/RuntimeException;
.source "ServiceSpecificException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field public final whitelist errorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 45
    iput p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 46
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    iput p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
