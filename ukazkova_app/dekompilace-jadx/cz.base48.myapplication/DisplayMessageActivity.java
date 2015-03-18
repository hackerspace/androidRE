package cz.base48.myapplication;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

public class DisplayMessageActivity extends ActionBarActivity {
    public DisplayMessageActivity() {
        ActionBarActivity actionBarActivity = this;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String message = getIntent().getStringExtra(MainActivity.EXTRA_MESSAGE);
        View view = r8;
        View textView = new TextView(this);
        View textView2 = view;
        textView2.setTextSize(40.0f);
        textView2.setText(message);
        setContentView(textView2);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        MenuItem item = menuItem;
        return item.getItemId() == 2131230784 ? 1 : super.onOptionsItemSelected(item);
    }
}
