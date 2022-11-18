.class public Landroid/util/BoostFramework$Scroll;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scroll"
.end annotation


# static fields
.field public static final blacklist HORIZONTAL:I = 0x2

.field public static final blacklist PANEL_VIEW:I = 0x3

.field public static final blacklist PREFILING:I = 0x4

.field public static final blacklist VERTICAL:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/util/BoostFramework;


# direct methods
.method public constructor blacklist <init>(Landroid/util/BoostFramework;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/BoostFramework;

    .line 134
    iput-object p1, p0, Landroid/util/BoostFramework$Scroll;->this$0:Landroid/util/BoostFramework;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
