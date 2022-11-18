.class Lcom/android/internal/app/PlatLogoActivity$Bubble;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bubble"
.end annotation


# instance fields
.field public blacklist color:I

.field public blacklist r:F

.field public blacklist text:Ljava/lang/String;

.field public blacklist x:F

.field public blacklist y:F


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    return-void
.end method
