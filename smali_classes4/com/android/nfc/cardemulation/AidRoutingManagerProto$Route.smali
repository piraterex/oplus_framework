.class public final Lcom/android/nfc/cardemulation/AidRoutingManagerProto$Route;
.super Ljava/lang/Object;
.source "AidRoutingManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AidRoutingManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Route"
.end annotation


# static fields
.field public static final blacklist AIDS:J = 0x20900000002L

.field public static final blacklist ID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/nfc/cardemulation/AidRoutingManagerProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/nfc/cardemulation/AidRoutingManagerProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AidRoutingManagerProto;

    .line 11
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManagerProto$Route;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManagerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
