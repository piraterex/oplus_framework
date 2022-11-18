.class public Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOpChangedInternalListener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 7549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onOpChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7551
    return-void
.end method

.method public whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7550
    return-void
.end method
