.class public Landroid/content/ContentResolver$OpenResourceIdResult;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenResourceIdResult"
.end annotation


# instance fields
.field public greylist id:I

.field public greylist r:Landroid/content/res/Resources;

.field final synthetic blacklist this$0:Landroid/content/ContentResolver;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentResolver;

    .line 2117
    iput-object p1, p0, Landroid/content/ContentResolver$OpenResourceIdResult;->this$0:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
