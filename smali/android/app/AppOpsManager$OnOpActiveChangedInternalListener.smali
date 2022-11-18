.class public interface abstract Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpActiveChangedInternalListener"
.end annotation


# virtual methods
.method public blacklist onOpActiveChanged(IILjava/lang/String;Z)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 7561
    return-void
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 7560
    return-void
.end method
