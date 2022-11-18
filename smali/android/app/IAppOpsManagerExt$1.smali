.class Landroid/app/IAppOpsManagerExt$1;
.super Ljava/util/HashMap;
.source "IAppOpsManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppOpsManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 115
    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:get_installed_apps"

    invoke-virtual {p0, v1, v0}, Landroid/app/IAppOpsManagerExt$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
