.class Landroid/content/pm/IActivityInfoWrapper$1;
.super Ljava/lang/Object;
.source "IActivityInfoWrapper.java"

# interfaces
.implements Landroid/content/pm/IActivityInfoExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/IActivityInfoWrapper;->getExtImpl()Landroid/content/pm/IActivityInfoExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/IActivityInfoWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/IActivityInfoWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/IActivityInfoWrapper;

    .line 22
    iput-object p1, p0, Landroid/content/pm/IActivityInfoWrapper$1;->this$0:Landroid/content/pm/IActivityInfoWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
