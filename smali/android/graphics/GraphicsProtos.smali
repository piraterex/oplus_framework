.class public final Landroid/graphics/GraphicsProtos;
.super Ljava/lang/Object;
.source "GraphicsProtos.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 42
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 43
    .local v0, "token":J
    iget v2, p0, Landroid/graphics/Point;->x:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    iget v2, p0, Landroid/graphics/Point;->y:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 46
    return-void
.end method
