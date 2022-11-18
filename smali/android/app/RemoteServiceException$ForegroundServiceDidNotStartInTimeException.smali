.class public Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
.super Landroid/app/RemoteServiceException;
.source "RemoteServiceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundServiceDidNotStartInTimeException"
.end annotation


# static fields
.field private static final blacklist KEY_SERVICE_CLASS_NAME:Ljava/lang/String; = "serviceclassname"

.field public static final blacklist TYPE_ID:I = 0x1


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public static blacklist createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 3
    .param p0, "service"    # Landroid/content/ComponentName;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serviceclassname"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public static blacklist getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 69
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "serviceclassname"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
