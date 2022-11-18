.class public final Landroid/content/pm/PackageManager$ComponentInfoFlags;
.super Landroid/content/pm/PackageManager$Flags;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentInfoFlags"
.end annotation


# direct methods
.method private constructor blacklist <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 4950
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageManager$Flags;-><init>(J)V

    .line 4951
    return-void
.end method

.method public static whitelist of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .locals 1
    .param p0, "value"    # J

    .line 4954
    new-instance v0, Landroid/content/pm/PackageManager$ComponentInfoFlags;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;-><init>(J)V

    return-object v0
.end method
