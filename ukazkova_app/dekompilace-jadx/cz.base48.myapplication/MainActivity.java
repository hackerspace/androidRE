package cz.base48.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends ActionBarActivity {
    public static final String EXTRA_MESSAGE = "cz.base48.myapplication.MESSAGE";

    public MainActivity() {
        ActionBarActivity actionBarActivity = this;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return 1;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        MenuItem item = menuItem;
        return item.getItemId() == 2131230784 ? 1 : super.onOptionsItemSelected(item);
    }

    public void send_message(View view) {
        View view2 = view;
        Intent intent = r9;
        Intent intent2 = new Intent(this, DisplayMessageActivity.class);
        Intent intent3 = intent;
        intent = intent3.putExtra(EXTRA_MESSAGE, ((EditText) findViewById(R.id.edit_message)).getText().toString());
        startActivity(intent3);
    }
}
