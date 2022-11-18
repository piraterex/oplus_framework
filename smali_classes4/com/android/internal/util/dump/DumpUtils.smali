.class public Lcom/android/internal/util/dump/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V
    .locals 6
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "component"    # Landroid/content/ComponentName;

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 51
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 52
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class_name"

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 54
    return-void
.end method

.method public static blacklist writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "string"    # Ljava/lang/String;

    .line 35
    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
